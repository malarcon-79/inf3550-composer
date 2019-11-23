#!/bin/bash

docker pull hyperledger/fabric-ccenv:latest

cd ~/fabric-dev-servers
export FABRIC_VERSION=hlfv12
./downloadFabric.sh
./startFabric.sh
./createPeerAdminCard.sh
composer-playground