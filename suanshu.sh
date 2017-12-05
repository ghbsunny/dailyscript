#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-12 
# * Last modified : 
# * Filename      : suanshu.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "$0这个脚本会对参数1和参数2进行四则运算"
echo "提示"
echo "请输入1执行加法"
echo "请输入2执行减法"
echo "请输入3执行乘法"
echo "请输入4执行除法"
read -p "请选择要做的操作: " m

case $m in

1)
   let s=$1+$2
   echo "The result is $s" 
;;

2)
   let s=$1-$2
   echo "The result is $s" 
;;


3)
   let s=$1*$2
   echo "The result is $s" 
;;

4)
   let s=$1/$2
   echo "The result is $s" 
;;

esac
