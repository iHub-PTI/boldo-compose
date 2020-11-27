#!/bin/bash
git clone https://github.com/iHub-PTI/boldo-server
git clone https://github.com/iHub-PTI/boldo-sockets
git clone https://github.com/iHub-PTI/boldo-web
docker-compose build
docker-compose up -d
