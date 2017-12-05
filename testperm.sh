#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08 
# * Last modified : 2017-08-14
# * Filename      : testfile.sh
# * Description   : 测试文件或者目录下文件的权限 
# * Function      :
# * version       : 1.1
# ----------------+---------------------------------------+
#测试文件的权限

t=`id -u`
[ $t -eq 0 ] && echo "Pay attention ,you are root,you have permission readable and writeable to normal file " || echo "You are a normal user" 

#echo -e "Please input a filename ,I will check the filename's type and permission\n\n"
#read -p "Please input a filename: " filename
#test -z $filename && echo "U must input a filename" && exit 0;
#test ! -e $filename && echo "The filename do not exist" && exit 0;
#test -f $filename && filetype="regulare file"
#test -d $filename && filetype="directory"
#test -r $filename && perm="readable"
#test -w $filename && perm="$perm writeable"
#test -x $filename && perm="$perm executable"
#echo "The filename $filename is a $filetype"
#echo "And the permission are:$perm"

read -p "Please enter dir: " dir
if [ "$dir" == "" -o ! -d "$dir" ];then
  echo "The $dir is not exist in your system"
  exit 1;
fi
filelist=$(ls $dir)
for filename in $filelist
do 
   perm=""
  [ -r "$dir/$filename" ] && perm="$perm readable"
  [ -w "$dir/$filename" ] && perm="$perm writeable"
  [ -x "$dir/$filename" ] && perm="$perm excutable"
 echo "$dir/$filename's permission is $perm"
done
