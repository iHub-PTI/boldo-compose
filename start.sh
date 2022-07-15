#!/bin/bash

export PUBLIC_KEY=$(cat ./keys/rsa_boldo_dev.pub)
export PRIVATE_KEY=$(cat ./keys/rsa_boldo_dev.key)

if [[ $1 == "" ]]; then
  gitBranch="dev"
else
  gitBranch=$1
fi

git clone https://github.com/iHub-PTI/boldo-server && cd ./boldo-server && git checkout $gitBranch && cd ../

git clone https://github.com/iHub-PTI/boldo-sockets && cd ./boldo-sockets && git checkout $gitBranch && cd ../

git clone https://github.com/iHub-PTI/boldo-web && cd ./boldo-web && git checkout $gitBranch && cd ../

docker network create boldo-network-lite


docker-compose -f docker-compose.yaml up --build --detach
