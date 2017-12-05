#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : catchacc.sh
# * Description   : catch account in the system 
# * Function      :
# * version       : 1.0
# ----------------+---------------------------------------+
accounts=`cat /etc/passwd | cut -d ":" -f1`
i=0
for account in $accounts
do
    i=$(($i+1))
    echo "The $i account is $account"
done
exit 6;
