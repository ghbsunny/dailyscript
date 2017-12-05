#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : excute.sh
# * Description   : 
# * Function      :
# * version       : 
# ---------------+---------------------------------------+
t=`find $1 -name "*.sh"` 
[ -n "$t" ]  && { chmod +x "$1";echo ""$1" can be excuted now"; } || echo "it not an script"
