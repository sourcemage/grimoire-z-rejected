#!/bin/bash

PWD=(pwd)
LD_PRELOAD=./libstdc++-2-libc6.1-1-2.9.0.so
export LD_PRELOAD
cd /usr/share/eagle-cad/bin
./eagle
cd $PWD