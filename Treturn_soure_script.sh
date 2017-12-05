#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-01
#FileName:             Treturn_soure_script.sh
#version:              1.0
#Your change info:     
#Description:          For test the functioon of return used in script
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
echo "Useage:please run the script by source,such as  source Treturn_soure_script.sh"
echo RC1=$RC1
echo RC2=$RC2
echo \$?=$?
#os_version=`cat /etc/system-release | grep -o " [0-9]"| cut -d " " -f2` && { RC1=$?;return 6;RC2=$?; }
os_version=`cat /etc/system-release | grep -o " [0-9]"| cut -d " " -f2` && { RC1=$?;RC2=$?; }
ls
pwd
echo RC1=$RC1
echo RC2=$RC2
echo \$?=$?
