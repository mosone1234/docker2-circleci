#!/bin/bash

cd /home/src/docker2-circleci
sed -i "s/hola-docker:.*/hola-docker:$CIRCLE_SHA1/g" docker-compose.override.yml
docker-compose up -d
