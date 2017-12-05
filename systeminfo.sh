#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-29 
# * Last modified : 
# * Filename      : systeminfo.sh
# * Description   : To collect the system infomation
# * Function      :
# * version       : v1.0
# ----------------+---------------------------------------+
echo "The hostname is `hostname`"
echo "IPV4 is:"
ifconfig |grep "inet addr" 
echo "The version is `lsb_release -r`"
echo "The core version is `uname -r`"
echo "The CPU  `grep "model name" /proc/cpuinfo`"
echo "The `grep MemTotal /proc/meminfo `"
echo "The disk capacity is:"
fdisk -l |grep Disk | grep "/dev/sd" | cut -d , -f1
