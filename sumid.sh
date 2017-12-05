#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-30 
# * Last modified : 
# * Filename      : sumid.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
var10=`cat /etc/passwd | cut -d : -f3 | sed -n 10p`
var20=`cat /etc/passwd | cut -d : -f3 | sed -n 20p`
let var=var10+var20
echo $var
