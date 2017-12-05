#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-03
#FileName:             Tarray.sh
#version:              1.0
#Your change info:     
#Description:          For test array
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************


#to find max and min num in ten nums
declare -a rand
declare -i max=0
declare -i min=32767
for i in {0..9} ; do
    rand[$i]=$[$RANDOM%99]
	echo rand[$i]=${rand[$i]}
	[ ${rand[$i]} -gt $max ] && max=${rand[$i]}
	[ ${rand[$i]} -lt $min ] && min=${rand[$i]}
done
echo "MAX:$max min:$min"


#to sum the lines in /var/log/*.log which subscript is even num
declare -a files
files=(/var/log/*.log)
declare -i lines=0
for i in $(seq 0 $[${#files[*]}-1]);do
   if [ $[$i%2] -eq 0 ];then
       let lines+=$(wc -l ${files[$i]} | cut -d " "  -f1)
   fi
done

echo "total lines is $lines"







