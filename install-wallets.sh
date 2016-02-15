#!/bin/bash

echo "Installing Litecoin version 0.10.4.0 Wallet for Linux."
echo "Running commands as root."

#Required for Bitcoin and Litecoin Wallet GUIs
echo "Installing libqtgui4"
sudo apt-get install libqtgui4

#Download Litecoin Wallet
echo "Downloading the wallet..."
wget https://download.litecoin.org/litecoin-0.10.4.0/linux/litecoin-0.10.4.0-linux64.tar.gz

#Un-Tar the Wallet
tar xzvf litecoin-0.10.4.0-linux64.tar.gz  

#Change Directory
cd ./litecoin-0.10.4.0/bin/

#Run the Wallet
echo "Executing your newly installed wallet."
./litecoin-qt
