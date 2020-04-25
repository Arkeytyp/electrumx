#!/bin/bash

if [ "$(basename "$(pwd)")" == "prod" ]; then echo "Run me from project root as ./prod/$(basename "$0")" && exit 1; fi

docker build -t kyuupichan/electrumx:latest -f ./prod/Dockerfile .
