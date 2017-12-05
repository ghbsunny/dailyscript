#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-30 
# * Last modified : 
# * Filename      : sumspace.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
var1="$1"
var2="$2"
var11=`cat "$1" | grep ^$ | wc -l`
echo "$var1 space line is $var11"
var22=`cat "$2" | grep ^$ | wc -l`
echo "$var2 space line is $var22"
let var=var11+var22
echo "The total space line is $var"


