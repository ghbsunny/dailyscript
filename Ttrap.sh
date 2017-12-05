#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-02
#FileName:             Ttrap.sh
#version:              1.0
#Your change info:     
#Description:          For test trap
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************

trap '' int
echo "pid is $$"
echo "now 1 diy trap signal"
trap -p
i=1
while [ $i -lt 5 ]
do
    sleep 5
	echo now i is $i
    let	i++
done
trap '-' int
echo "now 2 diy trap signal"
trap -p
j=1
while [ $j -lt 5 ];do
   echo j is $j
   let j++
   sleep 2
 done

trap "echo now catch int 2;exit 88" 2
echo "now 3 diy trap signal"
trap -p
m=1
while [ $m -lt 5 ];do
   echo m is $m
   let m++
   sleep 3
 done

 echo now $0 done
