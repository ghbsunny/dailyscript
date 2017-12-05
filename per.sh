#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : per.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
[ ! -r "$1" -a ! -w "$1" ] && echo "yes,$1 not read and not write!" || echo "no.$1 can read or write" 
