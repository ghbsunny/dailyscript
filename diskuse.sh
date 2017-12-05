#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-29 
# * Last modified : 
# * Filename      : diskuse.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
i=`df | grep "^/dev/sd.*" | tr -s " " : | cut -d : -f5 | cut -d% -f1`
for t in $i
do
[ "$t" -gt 80 ] && echo " warning disk is $t" ||echo "$t is safe"
done  
