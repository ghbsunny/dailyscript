#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-27
#FileName:             mondisk.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
df | grep "/dev/sd" | while read disk;do
   diskused=`echo "$disk" | sed -r 's/.* ([0-9]+)%.*/\1/'`
   devname=`echo "$disk" | cut -d " " -f1 `
   #[ $diskused -ge 3 ]&& { echo "Warn:$devname is $diskused,pay attention">>/root/diskwarn;pwd; } 
   [ $diskused -ge 3 ]&& { echo "Warn:$devname is $diskused,pay attention">>/root/diskwarn;wall check "$devname,it is $diskused";pwd; } 
   done
   exit
