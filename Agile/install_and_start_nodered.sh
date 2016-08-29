#!/bin/sh
#install prerequsites
#Using newer versions of node.js
sudo apt-get remove nodered
sudo apt-get remove nodejs nodejs-legacy
sudo apt-get remove npm   # if you installed npm

curl -sL https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install -y build-essential python-rpi.gpio nodejs


#Install node-red
sudo npm cache clean
sudo npm install -g --unsafe-perm node-red

#Auto start on boot
#sudo systemctl enable nodered.service

#start node-red
node-red
