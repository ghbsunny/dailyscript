#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : calculate100.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
#计算1递增加到输入数字的和
read -p "Please input your nu to cal 1+2+3+...+nu: " nu
#注意，这里$nu要加双引号，否则当为空值，直接按enter，就会出错
echo "$nu" | grep -oE [[:alpha:]] >&/dev/null && test=1 
if [ "$nu" = "" -o "$test" = 1 ]; then
   echo "Please input number"
    exit 6;
fi
s=0
for ((i=1;i<=$nu;i=i+1))
   do
     s=$(($s+$i))
     echo "it is the $i cycle."
done
   echo "1+2...+$nu=$s"

#不用循环，计算1+..+nu
#seq $nu | tr '\n' '+'|sed 's/\+$/\n/g'| bc



#测试1+100简单循环
#for((赋值；条件；运算语句))
#通过bash -x 脚本 看出for在执行循环操作时，
#第一次for循环只有赋值，和执行条件对比
#从第二次for循环开始，先做运算操作，然后执行条件对比，如果满足条件继续执行循环，如果不满足条件，跳出循环
#j=0
#for ((i=0;i<=100;i++))
#do
#((j=j+i))
#done
#echo $j;

#用until测试1+100，until当满足条件的时候跳出循环
#i=0;
#s=0;
#until [ "$i" = "100" ]
#   do
#      i=$(($i+1))
#      s=$(($s+$i))
#  done
#echo "The result of 1+2+3+4+....+100=$s"
 
#用while测试1+100,while 当不满足条件的时候调出循环
#i=0;
#s=0;
#while [ "$i" != "100" ]
#   do
#      i=$(($i+1))
#      s=$(($s+$i))
#  done
#echo "The result of 1+2+3+4+....+100=$s"
