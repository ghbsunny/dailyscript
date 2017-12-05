#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : choice.sh
# * Description   : to test function
# * Function      :
# * version       : 1.0
# ----------------+---------------------------------------+
function sunny(){
      echo  "Your choice is:$3 "  #这里的$3是函数里的变量
}
echo "The program will print your selection"
case $1 in
#注意，还是后面跟的变量是还是自己的变量，一样是$0,$1...，但是这个和整个脚本的变量要区别起来，见"one two"）这个例子
 "one two")
       sunny 1 2 three 4 5 6;
       echo "my choice $1"; #这里的$1是脚本里的$1
       ;;
 "two three four five")
       sunny 2
       echo "my choice is $1";
       ;;
three)
       sunny 3
        echo "my choice is $0";
       ;;
*)
      echo "Usage $0 {one|two|"three"}"
      ;;
esac
#
#function sunny(){
#      echo -n "Your choice is: "
#}
#echo "The program will print your selection"
#case $1 in
# one)
#       sunny;echo $1 | tr 'a-z' 'A-Z'
#       ;;
# two)
#       sunny;echo $1 | tr 'a-z' 'A-Z'
#       ;;
#"three")
#       sunny;echo $1 | tr 'a-z' 'A-Z'
#       ;;
#*)
#      echo "Usage $0 {one|two|three}"
#      ;;
#esac
