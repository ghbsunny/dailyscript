#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : argsnum.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
[ $# -lt 1 ] &&  { read -p  "至少应该个一个参数: " class;var1=`cat "$class" | grep "^$"  |wc -l` ;echo "$class space number is "$var1" "; exit 66 ;}
var=`cat "$1" | grep "^$"  |wc -l;`
echo "$1 space number is "$var" "
