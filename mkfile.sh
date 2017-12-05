#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 
# * Filename      : mkfile.sh
# * Description   : make 3 file in onetime  
# * Function      :
# * version       : 1.0
# ----------------+---------------------------------------+
echo -e "The script will create 3 files by 'touch' command"
read -p "Please input your filename: " fileuser
filename=${fileuser:-"filename"} #fileuser 变量未设定或者为空，filename取"-"后面的值;否则filename=$fileuser;
#filename=${fileuser-"filename"} fileuser 变量未设定，filename取"-"后面的值;否则如果变量fileuser为空或者有值filename=$fileuse
date1=$(date --date='2 days ago' +%Y%m%d)
date2=$(date --date='1 day ago' +%Y%m%d)
date3=$(date +%Y%m%d)
file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}
touch "${file1}"
touch "${file2}"
touch "${file3}"


