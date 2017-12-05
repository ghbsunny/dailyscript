#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : checkdisk.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
dnu=`df -lh |grep "^/dev/sd"| tr -s " " % | cut -d % -f5`
inu=`df -i |grep "^/dev/sd"| tr -s " " % | cut -d % -f5 `
for i in $dnu
do 
[ $i -gt 80 ] && echo " disk usage is "$dnu" over 40%,please check" 
done
for m in $inu
do
[ $m -gt 80 ] && echo " inode usage is "$inu" over 2%,please check" 
done
