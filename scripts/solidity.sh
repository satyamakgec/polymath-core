#!/usr/bin/env bash

echo "doing step 1"
echo -ne '\n' | sudo add-apt-repository ppa:ethereum/ethereum
echo "doing step 2"
sudo apt-get -y update
echo "doing step 3"
sudo apt-get -y install solc
echo "Installing solc ...."
solc --version