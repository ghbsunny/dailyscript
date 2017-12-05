#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-02
#FileName:             Tselect.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
PS3="please input your choice: "
select menu in well job hello world bye;
do
   	case $menu in
	well)
	   echo "You have done well"
	   ;;
	job) 
	   echo "Nice job"
	   ;;
	hello)
	   echo "hello world"
	   ;;
	world)
	   echo "work hard"
	   ;;
	bye)
       echo "See U tomorrow"
	   break
	   ;;
	 *)
	   echo "Please re-input"
	   ;;
	esac
done





