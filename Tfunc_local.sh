#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-02
#FileName:             Tfunc_local.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
test_local () {
    #pwdsss &&  RC1=$? || RC2=$?
    pwd && local RC1=$ || local  RC2=$? ?
    }   
test_local
echo RC1=$RC1
echo RC2=$RC2
