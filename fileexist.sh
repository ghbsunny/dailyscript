#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-09 
# * Last modified : 
# * Filename      : testexit.sh
# * Description   : 
# * Function      :
# * version       : 
# ----------------+---------------------------------------+
#!/bin/bash
if [ ! -e /root/pass ];then
   touch /root/pass
   echo "just make file pass"
 exit 1
elif [ -e /root/pass -a -f /root/pass ];then
   rm /root/pass
   mkdir -p /root/pass/tt
  echo "remove file /root/pass"
  echo "make dir tt"
 exit 2;
elif [ -e /root/pass ] && [ -d /root/pass ]
   then
   rm -rf /root/pass
   echo "remove /root/pass"
exit 3; 
else 
 echo "what left here"
#exit 0;
fi
echo " only do rm /root/pass/"
exit 8;
