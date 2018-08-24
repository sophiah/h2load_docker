FROM centos:7

RUN yum install -y git wget vim c-ares-devel libev-devel openssl-devel zlib-devel make autoconf automake libtool gcc-c++
RUN mkdir -p /opt; cd /opt; git clone https://github.com/tatsuhiro-t/nghttp2.git; \
    cd /opt/nghttp2; git submodule update --init; \
    autoreconf -i; ./configure --enable-app; make; make DESTDIR=/usr/local/bin install

CMD tail -f /dev/null
