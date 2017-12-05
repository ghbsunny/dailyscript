#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-28
#FileName:             Twhile.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
#i=1
#while [ "$i" -lt 10 ];do
#   for (( j=1;j<="$i";j++)) do
#      echo -e -n "$i*$j=$[ $i*$j ]\t"
#	done
#	echo
#	let i++
#done


#i=1
#while read line;do
#    echo "$i cycle is \$line is <$line>"
#   let i++
#   echo "$line" | grep gt
#  echo "$line" | sed -nr 's/useage=.*/for test sed/p'
#echo
#done</root/tt

#df|grep /dev/sd  | while read line;do
#   dev=`echo "$line"| cut -d " " -f1`
#   use=`echo "$line"| sed -r 's/.* ([0-9]+)%.*/\1/'`
#   if [ "$use" -gt 3 ];then
#     echo "Warning "$dev"'s usage is over 3%,it is $use,please check"
#   else
#      echo ""$dev"'s usage is safe,it is $use"
#	fi
#done


while true;do
echo hello
sleep 2
done
