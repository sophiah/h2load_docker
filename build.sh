#!/bin/sh

docker build --rm  -t h2load_docker .

docker push sophiah/h2load

