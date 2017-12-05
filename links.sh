#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-29 
# * Last modified : 
# * Filename      : links.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "Below is the connected links"
netstat -nt |grep "ESTABLISHED"| tr -s " " : | cut -d : -f6 |sort|uniq -c|sort -nr
echo $@
echo $*
echo "$@"
echo "$*"
echo $?

