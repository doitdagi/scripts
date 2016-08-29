#!/bin/sh
#First you need Grunt
sudo npm install -g grunt-cli

git clone https://github.com/os-js/OS.js.git

cd OS.js
#install dependencies:
npm install --production
#build
grunt

#strat
./bin/start-dist.sh
