#!/bin/bash

apt-get install git build-essential

cd /opt/

git clone https://github.com/vanhauser-thc/thc-hydra.git

apt-get install zlib1g-dev libssl-dev libidn11-dev libcurses-ocaml-dev libpcre3-dev libpq-dev libsvn-dev libafpclient-dev libssh-dev

./configure

make install
