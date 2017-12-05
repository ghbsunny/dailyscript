#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-19 
# * Last modified : 
# * Filename      : OSversion.sh
# * Description   : To get os version 
# * version       : 1.0 
# ----------------+---------------------------------------+
#抓取两位数字
os_version=`cat /etc/system-release | sed -r 's@^([[:alpha:]].*[[:alpha:]] )([0-9]\.[0-9])(.*)@\2@'`
echo "os_version is ${os_version} by sed"

os_version=`cat /etc/system-release | grep -oE " [0-9]\.[0-9]"|cut -d " " -f2`
echo "os_version is ${os_version} by grep"


#抓取一位数字
os_version=`cat /etc/system-release | sed -r 's@^([[:alpha:]].*[[:alpha:]] )([0-9])(\..*)@\2@'`
echo "os_version is ${os_version} by sed"

os_version=`cat /etc/system-release | grep -oE " [0-9]"|cut -d " " -f2`
echo "os_version is ${os_version} by grep"
