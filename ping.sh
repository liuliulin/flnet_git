#!/bin/bash

net="10.134"
#for (( a=1;a<=30;a++ ));do
for a in $(seq 98 99);do
    for b in $(seq 1 254);do
    #for a in  `seq 1 30` ;do
        ping -c 1 -W 1 $net.$a.$b &> /dev/null
        I=`echo $?`
        if [ $I == 0 ];then
          echo $net.$a.$b is up
        else
          echo $net.$a.$b is down
        fi
    done
done
