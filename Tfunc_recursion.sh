#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-03
#FileName:             Tfunc_recursion.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
fact () {
if [ $1 -eq 0 -o $1 -eq 1 ];then
	echo 1
else
	echo  $[$1*$(fact $[$1-1])]
fi

}

fact $1
