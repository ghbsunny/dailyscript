#!/bin/bash

[ -e $1 ]&& { echo "file $1 is exit";exit 8; } || echo "Create $1"
cat > $1 <<eof
#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : `date +%F` 
# * Last modified : 
# * Filename      : `basename $1`
# * Description   : 
# * version       : 
# ----------------+---------------------------------------+

eof
chmod +x $1
vim + $1
