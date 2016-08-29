#!/bin/sh

cd OS.js  #os js source
cd src/packages/default
#clone the os.js granfana linking applicaiton
git clone https://github.com/doitdagi/osjs-grafana.git Grafana

grunt manifest config packages:default/Grafana
grunt
