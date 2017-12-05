#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-30
#FileName:             testsrv.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
#chkconfig:234 98 06
#description:just for test service daemon


#source function library
. /etc/init.d/functions

prog=testd
lockfile=/var/lock/subsys/$log



start (){
    [ "$EUID" != 0 ]&& exit 6;
	echo -n 



}


case "$1" in
start);

