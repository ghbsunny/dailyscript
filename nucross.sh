#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 
# * Filename      : nucross.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
declare -i m
declare -i n
read -p "Please input value for m " m
read -p "Please input value for n " n
#以下三个写法都可以表示m*n
#let total=m*n
# declare -i total=$m*$n;
total=$(($m*$n))
echo total is $total
exit 0
