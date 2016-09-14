#!/bin/sh

NAME=agile-influxdb
docker stop $NAME
docker rm $NAME
docker run \
       -d \
       -p 8083:8083 \
       -p 8086:8086 \
       --name $NAME \
       -v influxdb:/var/lib/influxdb \
       sbiermann/rpi-influxdb

#      -d \
 #     -p 8083:8083 \
  #    -p 8086:8086 \
#      --name $NAME \         
#      sbiermann/rpi-influxdb
         
