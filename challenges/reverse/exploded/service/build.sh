#!/usr/bin/env sh
docker build --ulimit nofile=2048 -t exploded .
docker run -dit -p 18000:8080 --name pwn-exploded exploded
