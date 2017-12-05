#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-02
#FileName:             Tshift.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
# There are 5 methods to test 
#while [ $# -gt 0 ];do
#while  (($#>0)) ;do
#until [ $# -eq 0 ];do
#until  (($#==0));do
until [ -z $1 ] ;do

echo "\$1 is $1"
echo "var num \$# is $#"
shift

done
