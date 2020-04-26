#!/bin/bash

docker run -it --name electrumx --rm --env-file ./prod/.env -p 50001:50001 infra.valu.idevcorp.net:5000/idevcorp/electrumx:latest
