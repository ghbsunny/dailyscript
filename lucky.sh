#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-04 
# * Last modified : 
# * Filename      : lucky.sh
# * Description   : Use for auto select lucky number 
# * version       : 1.0 
# ----------------+---------------------------------------+
export totalnu=50;
read -p "请问您要抽几等奖(请输入1 or 2 or 3)： " level
case $level in
1)
   echo "The first lucky number one is $[RANDOM%${totalnu}]";
   ;;
2)
      echo "The second lucky number  is $[RANDOM%${totalnu}] and $[RANDOM%${totalnu}] ";
   ;;
3)
      echo "The third lucky number is $[RANDOM%${totalnu}] and  $[RANDOM%${totalnu}] and  $[RANDOM%${totalnu}]";
     ;;

esac
