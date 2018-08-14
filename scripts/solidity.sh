#!/usr/bin/env bash

sudo apt update -y && sudo apt upgrade -y
sudo apt install -y build-essential cmake libboost-all-dev
git clone --recursive https://github.com/ethereum/solidity.git
cd solidity
mkdir build && cd build
cmake ..
make
ls -l solc
ls -l lllc
make install
echo "export LD_LIBRARY_PATH='$LD_LIBRARY_PATH:/usr/local/lib'" >> ~/.bashrc