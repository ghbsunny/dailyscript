#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-09-03
#FileName:             Tfork.sh
#version:              1.0
#Your change info:     
#Description:          For
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
bomb(){
    bomb|bomb&
}
echo "$0 is danger,it will make your computer resource  exhaustedin a few seconds,your computer need restart after that"
read -p "Please input your choice,y or n: " choice
case $choice in
y)
  bomb
  ;;
n)
  echo "You make a good chioce"
  exit 6
  ;;
*)
  echo "Your input is wrong"
  exit 8
  ;;
esac
