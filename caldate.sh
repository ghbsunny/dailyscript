#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : caldate.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "The program will try to calcudate"
echo "How many days before someday"
read -p "Please enter your date (YYYYMMDD ex > 20171110): " date2
date_dt=`echo "$date2" | grep -E '^[0-9]{8}\>'`
if [ "$date_dt" == "" ]; then
    echo "Please enter right date formate... ex > 20171110"
    exit 6;
fi
declare -i date_last=`date --date="$date2" +%s`
declare -i date_now=`date +%s`
declare -i date_total=$((${date_last} - ${date_now}))
declare -i date_d=$(($date_total/60/60/24))
if [ $date_total -lt 0 ];then
    echo "The last day is gone since "$((-1*$date_d))" ago."
else
    declare -i date_h=$(($(($date_total-$date_d*60*60*24))/60/60))
    echo "The last date is "$date_d" days and "$date_h" hours."
fi;


#通过输入时间计算日期
read -p "Please enter how many days: " days3
date_all=$(date -d  "`date +%Y%m%d` +${days3}days" +%Y-%m-%d)
echo "After $days3 days is ${date_all}"

exit

