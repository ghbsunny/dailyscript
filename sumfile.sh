#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-07-31 
# * Last modified : 
# * Filename      : sumfile.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
var1dir=`ls -l /etc | grep "^d" | wc -l`
var2dir=`ls -l /var | grep "^d" | wc -l`
var3dir=`ls -l /usr | grep "^d" | wc -l`
var1fil=`ls -l /etc | grep "^-" | wc -l`
var2fil=`ls -l /var | grep "^-" | wc -l`
var3fil=`ls -l /usr | grep "^-" | wc -l`
echo "var1dir=$var1dir"
echo "var2dir=$var2dir"
echo "var3dir=$var3dir"
echo "var1fil=$var1fil"
echo "var2fil=$var2fil"
echo "var3fil=$var3fil"
let vardir=var1dir+var2dir+var3dir
let varfil=var1fil+var2fil+var3fil
echo "vardir=$vardir"
echo "varfil=$varfil"

