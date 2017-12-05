#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-01
#FileName:             Tbreak_con_exit.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
for ((m=1;m<3;m++))
do
	for ((j=1;j<5;j++));do
		for ((i=1;i<5;i++ ))
		do
  		if [ $i -eq 3 ]
  		then
  			break 4
    	#continue 3
  	  	#exit 6
  		fi
  		echo "the m cycle is $m the out cycle is $j,and inner cycle is $i"
		done
	done
done

if [ $j -eq 1 ];then
echo "now it will exit, the m:j:i cycle is $m: $j : $i"
else
echo "now it will exit, the m:j:i cycle is $[ $m-1 ]: $[ $j-1 ] : $[ $i-1 ]"
fi
