#!/usr/bin/env bash

echo "doing step 1"
echo -ne '\n' | add-apt-repository ppa:ethereum/ethereum
echo "doing step 2"
apt-get -y update
echo "doing step 3"
apt-get -y install solc
echo "Installing solc ...."
solc --version