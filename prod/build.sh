#!/bin/bash

if [ "$(basename "$(pwd)")" == "prod" ]; then echo "Run me from project root as ./prod/$(basename "$0")" && exit 1; fi

docker build -t infra.valu.idevcorp.net:5000/idevcorp/electrumx:latest -f ./prod/Dockerfile .
