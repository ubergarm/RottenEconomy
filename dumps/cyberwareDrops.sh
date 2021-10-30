#!/bin/bash
CNT=0
while read line
do
    echo "$CNT: $line,"
    CNT=$(expr $CNT + 1)
done < cyberware.log
