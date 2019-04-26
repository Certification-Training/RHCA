#!/bin/bash
>iptomac.txt
ptm(){
  mac=`nmap $1 | awk '/MAC/{print $3}'`
  sleep 5
  echo "$1 $mac" >> iptomac.txt
}
for ip in `cat hosts.txt`
do
  ptm  $ip &
done
