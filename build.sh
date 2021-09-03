#!/usr/bin/env bash

set -e

if [[ -z ${RENPY_VERSION} ]];  
then
    echo "RENPY_VERSION is required"
    exit 1
fi  

docker build --build-arg RENPY_VERSION --tag moustacheful/renpy:$RENPY_VERSION .
docker push moustacheful/renpy:$RENPY_VERSION