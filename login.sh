#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : login
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
id=`grep $1 /etc/passwd | cut -d : -f3`
[ $id -gt 500 ] && { chsh  -s /bin/bash "$1";usermod -L "$1";chage -E -1 "$1";echo $1 canlogin; } || echo "it is admin"   
