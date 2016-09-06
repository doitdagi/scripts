#!/bin/sh

sudo apt-get install libglib2.0-dev libdbus-1-dev libudev-dev libical-dev libreadline-dev

wget http://www.kernel.org/pub/linux/bluetooth/bluez-5.39.tar.xz

tar xf bluez-5.39.tar.xz

cd bluez-5.39

./configure

make -j 4

sudo make install
