#!/usr/bin/env bash

echo -ne '\n' | sudo add-apt-repository ppa:ethereum/ethereum
sudo apt-get -y update
sudo apt-get -y install solc
solc --version