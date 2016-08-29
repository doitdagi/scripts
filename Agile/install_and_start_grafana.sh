#!/bin/sh
#download the current stable version
wget https://grafanarel.s3.amazonaws.com/builds/grafana_3.1.1-1470047149_amd64.deb

sudo apt-get install -y adduser libfontconfig

sudo dpkg -i grafana_3.1.1-1470047149_amd64.deb

#Enable the systemd service so that Grafana starts at boot.
#sudo update-rc.d grafana-server defaults 95 10

#start grafana server
# the default user and group is admin
#the default HTTP port is 3000
sudo service grafana-server start
