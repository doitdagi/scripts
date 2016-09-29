FROM resin/rpi-raspbian:jessie

MAINTAINER Dagmawi Neway <d_mekuria@create-net.org>
USER root

## Initial update of image ##
RUN apt-get -y update

## Install dependencies and build tools. ##
RUN apt-get -y install git npm nodejs-legacy

## Clone the Repo and install grunt ##
RUN git clone https://github.com/doitdagi/OS.js.git
RUN npm install -g grunt-cli supervisor


## Install and Compile OS.js ##
WORKDIR OS.js/
RUN npm install --production
RUN grunt

## Start Application and Expose Port ##
## Note: you can change 'start-dev.sh' (Development Version) to 'start-dist.sh' (Production Version) ##

CMD ./bin/start-dev.sh
EXPOSE 8000:8000
