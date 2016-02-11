#!/bin/bash

echo "Running commands as root."

echo "Updating System..."
sudo apt-get update && sudo apt-get upgrade -y

echo "Installing Dependecies..."
sudo apt-get install automake autoconf build-essential bc curl dos2unix fail2ban git havegedsudo 
sudo apt-get install libboost-all-dev libcurl4-openssl-dev libdb++-dev libleveldb-dev libminiupnpc-dev libssl-dev m4 nano unzip vim -y

echo "Downloading Miner..."
sudo git clone https://github.com/ig0tik3d/xcoin-cpuminer

echo "Configuring..."
cd xcoin-cpuminer./
#Give Permissions to Install Script
sudo chmod +x autogen.sh
./configure CFLAGS=”-O2″
make
