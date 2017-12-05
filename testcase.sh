#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-22 
# * Last modified : 
# * Filename      : testcase.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
read -p "input yes or no: " var
case $var in
yes|y|YES|Y|Yes|YeS)
    echo "your choice is yes"
;;
no|NO|N|n)
    echo "your choice is no"
;;
*)
    echo "your choice is wrong"
;;
esac
