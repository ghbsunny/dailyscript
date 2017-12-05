#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08
# * Last modified : 2017-08-08
# * Filename      : except_scp.sh
# * Description   : copy file by scp in a slicen mode
# * version       : 1.0
# ----------------+---------------------------------------+

expect -c "
spawn scp  /root/sysfunc.log root@192.168.32.71:/root 
expect {
\"*assword\" {set timeout 500; send \"Pass123456\r\"; }
\"yes/no\" { send \"yes\r\"; exp_continue; }
}
expect efo"

