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


read -p "Would you like to begin mining?? (y/n)" reply

if [ "$reply" = 'y' ] 
then
  echo "Executing Mining..."
  sleep 3
  read -p "Please enter the pool address:" address;
  read -p "Please enter the pool port number:" port;
  read -p "Please enter your worker name:" worker;
  read -p "Please enter your password:" password;
  
  sudo ./minerd -a X11 -o $address:$port -u $worker -p $password;

elif [ "$reply" = 'n'  ]
then
  echo "Exiting...";
  sleep 3;
  exit 0;
else
echo "Please Enter y/n";
fi
