#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-28
#FileName:             Tif.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
if [ 5 -gt 9 ];then
     echo "5 is bigger than 9"
else
     echo "5 is less than 9"
fi

read -p "Please input nu: " nu
[[ $nu =~ ^[0-9]+$ ]] || { echo "Your input is not num";exit 8; }
if [ "$nu" -gt 90 ];then
    echo "$nu is bigger than 90"
	  elif [ "$nu" -lt 50 ];then
	  echo "$nu is less than 50"
	     else 
		 echo "Your input $nu is between range 50-90"
fi

read -p "please input ip: " ip
if ping -c 1 -W 1 $ip &>/dev/null;then
   echo "$ip is up"
   elif grep "$ip" /root/list &>/dev/null
   then
   echo  "host "$ip" is under maitenance"
   else  echo "$ip is unexpectedly down,please check"
fi




