#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 
# * Filename      : yORn.sh
# * Description   : Go not go 
# * Function      :
# * version       : 1.0
# ----------------+---------------------------------------+
#read -p "Please input y or n: " var
#if [ "$var" == "Y" -o "$var" == "y" ]
#   then 
#        echo "it is yes and continue";
#           exit 0; 
#      elif [ "$var" == "N" -o "$var" == "n" ]
#          then 
#             echo "it is no and interrupt!";
#             exit 0;
#       else 
#       echo "I do not what you type,please check"
#           exit 0;
#fi

until [ "$var" = "yes" -o "$var" = "YES" ]
do
   read -p "Please enter yes or YES to stop this program: " var
done
echo "OK!U had input the correct answer."


read -p "Please input your choice: " choice
final=`echo "$choice" |tr [[:upper:]] [[:lower:]]`

case $final in
y|yes)
     echo "You input "$choice",and your choice is yes"
	 ;;
n|no)
     echo "You input "$choice",and your choice is no";
	 ;;
y???es)
    echo "You input $choice,it has three character between yes"
	;;
[sunny])
   echo "You input $choice,it only has one character"
     ;;
*)  
     echo "Your choice is $choice,it is not the answer"
	 ;;
esac

