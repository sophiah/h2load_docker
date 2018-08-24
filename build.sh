#!/bin/sh

docker build --rm  -t sophiah/h2load .

docker push sophiah/h2load
