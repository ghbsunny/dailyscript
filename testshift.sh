#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : testshift.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "now the para num is $#,they are $@"
shift
echo "now the para num is $#,they are $@"
shift 2
echo "now the para num is $#,they are $@"
exit 0;
