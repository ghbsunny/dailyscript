#!/bin/bash
#
#******************************************************************************
#Author:               Sunny
#Email:                ghbsunny@sina.com
#Date:                 2017-08-28
#FileName:             Tfor.sh
#version:              1.0
#Your change info:     
#Description:          Fori 5 methods to create a  for list
#Copyright(C):         2017  All rihts reserved
#*****************************************************************************
#there are 5 methods to create a  for list
i=1
 for var in a b c d
      do
	  	    echo "$i cycle the var is $var"
			let i++
 done	
echo
i=1
for var in {3..9..2}
   do 
	  	    echo "$i cycle the var is $var"
			let i++
 done	
echo
i=1
for var in $(seq 3 2 9)
   do 
	  	    echo "$i cycle the var is $var"
			let i++
 done	
echo
i=1
for var in $(echo {1..4})
   do 
	  	    echo "$i cycle the var is $var"
			let i++
 done	
echo
i=1
for var in $(ls /root/)
   do 
	  	    echo  "$i file is "$var", type is `file /root/$var`" 
			let i++
 done	
echo
i=1
for var in /root/*
   do 
	  	    echo  "$i file is "$var", type is `file $var`" 
			let i++
 done	
echo
i=1
for var in $@
   do 
	  	    echo  "$i cycle,and now para is $1,var is $var,\$@ is $@" 
			let i++
			shift
 done	
echo
