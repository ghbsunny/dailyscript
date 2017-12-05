#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : hostping.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
sys=`cat /etc/system-release | grep -o " [ 0-9 ]" |cut -d " " -f2`
case $sys in
      6)
         ip=`ifconfig | grep eth1 -A 1 | grep inet | tr -s " " : | cut -d : -f4`
         ping -c 1 $ip &>/dev/null && echo " 该IP:"$ip" 地址可访问" ||  echo " no 该IP:"$ip" 地址不可访问"
      ;;
      7) 
         ip=`ifconfig | grep ens37 -A 1 | grep inet | tr -s " " : | cut -d : -f3`
           ping -c 1 "$ip" &>/dev/null && echo " 该IP:"$ip" 地址可访问" ||  echo " no 该IP:"$ip" 地址不可访问"

       ;;
esac
