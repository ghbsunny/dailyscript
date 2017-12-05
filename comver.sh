#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-29 
# * Last modified : 
# * Filename      : comver.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
i=`cat /etc/centos-release | grep -o "release [0-9]" | cut -d " " -f2`
[ "$i" -eq 6 ] && printf "version is $i\n" || printf "version is 7\n" 
