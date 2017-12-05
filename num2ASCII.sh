#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 
# * Filename      : num2ASCII.sh
# * Description   : Turn Xdigit to ASCII 
# * version       : 1.0
# ----------------+---------------------------------------+

for ((i=20;i<80;i++))  do
echo $i is `printf "\x${i}\n"`
done


