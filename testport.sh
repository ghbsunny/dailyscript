#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : testport.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
echo "Now I will detect the server's services"
echo -e "The www.ftp,ssh and mail will be detected!\n"
testing=$(netstat -ntlu | grep ":80 ")
if [ "$testing" != "" ] 
   then
        echo "WWW is running " 
    else echo "WWW is not running now"
fi

testing=$(netstat -ntlu | grep ":22 ")
if [ "$testing" != "" ] 
   then
        echo "SSH is running " 
    else echo "SSH is not running now"
fi

testing=$(netstat -ntlu | grep ":21 ")
if [ "$testing" != "" ] 
   then
        echo "FTP is running " 
    else echo "FTP is not running now"
fi

testing=$(netstat -ntlu | grep ":25 ")
if [ "$testing" != "" ] 
   then
        echo "MAIL is running " 
     else echo "MAIL is not running now"
fi
