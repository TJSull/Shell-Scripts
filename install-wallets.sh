#!/bin/bash

#Required for Bitcoin and Litecoin Wallet GUIs
sudo apt-get install libqtgui4

#Download Litecoin Wallet
wget https://download.litecoin.org/litecoin-0.10.4.0/linux/litecoin-0.10.4.0-linux64.tar.gz

#Un-Tar the Wallet
tar xzvf litecoin-0.10.4.0-linux64.tar.gz  

#Change Directory
cd litecoin-0.10.4.0-linux64/## 

#Run the Wallet
./litecoin-qt
