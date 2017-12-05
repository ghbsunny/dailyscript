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
#read -p "Please enter ip: " ip
#ping -c 1 $ip &>/dev/null && echo "该IP: "$ip" 地址可访问" || echo "no~该IP: "$ip" 地址不可访问"

network=192.168.204
for sitnu in $(seq 1 20)
  do
#    ping -c 1 -w 1 ${network}.${sitnu} &>/dev/null && echo "${network}.${sitnu} is up" || echo  "${network}.${sitnu} is down"
#done
ping -c 1 -w 1 ${network}.${sitnu} &>/dev/null && result=0 || result=1 
  if [ "$result" == 0 ];then
      echo "${network}.${sitnu} is up now" 
  elif [ "$result" == 1 ];then
      echo  "${network}.${sitnu} is down now"
   fi
done;
