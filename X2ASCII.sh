#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-13 
# * Last modified : 
# * Filename      : X2ASCII.sh
# * Description   :16进制转换为ASCII 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+

for ((i=20;i<80;i++))  do
echo $i is `printf "\x${i}\n"`
done

