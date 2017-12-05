#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-29 
# * Last modified : 
# * Filename      : dish.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "The biggest disk's usage is `df | grep "^/dev/sd" | tr -s " "| sort -t " " -k 3 -nr | head -1 |cut -d " " -f1,5`  "
