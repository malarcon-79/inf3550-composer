#!/bin/bash

# Step 0.5: make NPM available without logout/login
export NVM_DIR="${HOME}/.nvm"
[ -s "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"
[ -s "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"

# Step 1: install CLI tools
npm install -g composer-cli@0.20.9
npm install -g composer-rest-server@0.20.9
npm install -g generator-hyperledger-composer@0.20.9
npm install -g yo

# Step 2: install Playground
npm install -g composer-playground@0.20.9

# Step 3: skip this step

# Step 4: install Hyperledger Fabric
mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
tar -xvf fabric-dev-servers.tar.gz

# Step 4.5: make Docker available without logout/login
#newgrp docker

#cd ~/fabric-dev-servers
#export FABRIC_VERSION=hlfv12
#./downloadFabric.sh
