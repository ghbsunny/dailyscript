#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Date:                 2017-09-01
#FileName:             Treturn.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
get_version() {
    os_version=`cat /etc/system-release | grep -o " [0-9]"| cut -d " " -f2` && { local RC1=$?;return 2;RC2=$?; }

	}
get_version && { echo "\$?=$?;RRC1=$?"; } || { echo "\$?=$?;WRC2=$?"; }
echo version=$os_version
echo RC1=$RC1
echo RC2=$RC2


