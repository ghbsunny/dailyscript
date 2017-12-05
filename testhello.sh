#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : testhello.sh
# * Description   : if $1 is hello,then it is right 
# * Function      :
# * version       : 1.0
# ----------------+---------------------------------------+
if [ "$1" = "hello" ]; then
   echo "hello,welcome sunny"
   exit 0;
      elif [ -z "$1" ]; then
          echo "Please enter one parament "
          exit 6;
            elif  [ "$1" != "hello" ]; then
                echo "Usage $0 {hello}"
                echo "Please type hello,ex>{$0 hello}"
                exit 8;
fi


