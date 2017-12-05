#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 
# * Filename      : test#.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
t=$@
p="$@"
m=$*
n="$*"
for i in $t
do echo $i
done

for i in $p
do echo $i
done

for i in $m
do echo $i
done

for i in $n
do echo $i
done
