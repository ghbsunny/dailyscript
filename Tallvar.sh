#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-28
#FileName:             varnu.sh
#version:              1.0
#Your change info:     
#Description:          For test difference between @# and $*
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
#U can bypass shift command to test every part script
i=1
echo \$@ is $@
for t in $@;do
  echo "$1 is \$1,it $i shift, \$@  is $@ "
  let i++
#  shift 
  done

  i=1
echo now  \"\$@\" is "$@"
for t in "$@";do
  echo "$1 is \$1,it $i shift, \"\$@\"  is $@ "
  let i++
 #shift
  done

  i=1
echo \$* is $*
for t in $*;do
  echo "$1 is \$1,it $i shift, \$*  is $* "
  let i++
  #shift
  done

  i=1
echo \"\$*\" is "$*"
for t in "$*" ;do
  echo "$1 is \$1,it $i shift, \"\$*\"  is $* "
  [ -z "$*" ] &&  echo \"\$*\" is null || echo "\"\$*\" is $*"
  shift
  let i++
  done
