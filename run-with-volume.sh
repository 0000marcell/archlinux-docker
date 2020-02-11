#!/usr/bin/bash

docker run -it -v ~/docker-volume:/root/docker-volume --publish 8000:8080 --name original archlinux:1.0
