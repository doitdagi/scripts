#!/bin/sh

#Note
#Run this inside osjs source

cd src/packages/default
#clone the os.js granfana linking applicaiton
git clone https://github.com/muka/osjs-nodered NodeRed
cd ../../../

grunt manifest config packages:default/NodeRed
grunt
