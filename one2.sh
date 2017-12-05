#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-28
#FileName:             one2.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
read -p "Please input your nu to cal 1+2+3+...+nu: " nu
s=0
for ((i=1;i<=$nu;i=i+1))
   do  
        s=$(($s+$i))
  echo "it is the $i cycle."
done
echo "1+2...+$nu=$s"
