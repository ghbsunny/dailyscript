#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : nologin.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
id=`grep $1 /etc/passwd | cut -d : -f3`
[ $id -gt 500 ] && { chsh "$1" -s /sbin/nologin;echo $1 is nologin; } || echo "it is admin"
   
