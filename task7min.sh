#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-27
#FileName:             task7min.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
while true;do
date +%F-%H-%M>>/root/task7min.log
echo "one 7 minutes now">>/root/task7min.log
wall now is 7 minutes again 
sleep 7m
done
