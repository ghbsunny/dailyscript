#!/bin/bash
for i in {1..3} 
do
 user=terry$i
 useradd $user
#batch delete users
#userdel -r $user
echo "Pass123456" | passwd --stdin $user
done
