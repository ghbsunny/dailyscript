#!/bin/bash

# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-08
# * Last modified : 2017-08-08
# * Filename      : httpd.sh
# * Description   : Auto install apache for centOS 6 or 7
# * version       : 1.0
# ----------------+---------------------------------------+

#set var
export os_version=`cat /etc/system-release | grep -oE " [0-9]"| cut -d " " -f2`;
#install tool software 
yum grouplist "development tools" &>/dev/null ||  yum -y groupinstall "Development Tools" &>/dev/null;
rpm -q apr-devel &>/dev/null || yum -y install apr-devel &>/dev/null;
rpm -q apr-util-devel &>/dev/null || yum -y install apr-util-devel &>/dev/null;
rpm -q openssl-devel  &>/dev/null || yum -y install openssl-devel &>/dev/null;
rpm -q gcc &>/dev/null ||yum -y install gcc &>/dev/null;
rpm -q bzip2 &>/dev/null ||yum -y install bzip2 &>/dev/null;
#close selinux
setenforce 0;
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config; 

#close firewall and decompression packeges
case $os_version in
6)
  chkconfig iptables off;
  service iptables stop;

   httpdpkg=`find  / -name "httpd-2.2.34.tar.bz2" | head -1`
   echo "httpdpkg is  ${httpdpkg}"
   [ -n $httpdpkg ] &&  tar xvf $httpdpkg -C /usr/local/src/ &>/dev/null || { wget http://apache.fayea.com/httpd/httpd-2.2.34.tar.bz2; tar xvf httpd-2.2.34.tar.bz2; }
   export httpdir="/usr/local/src/httpd-2.2.34"
;;
7)
  systemctl disable firewalld.service
  systemctl stop firewalld.service

   httpdpkg=`find / -name "httpd-2.4.27.tar.bz2" | head -1`
   echo "httpdpkg is  ${httpdpkg}"
   [ -z $httpdpkg ] &&{ wget http://apache.fayea.com/httpd/httpd-2.4.27.tar.bz2; tar xvf httpd-2.2.34.tar.bz2; } || tar xvf $httpdpkg -C /usr/local/src/ &>/dev/null ;
   export httpdir="/usr/local/src/httpd-2.4.27"
;;
esac
#make compile
[ -d $httpdir ] && cd $httpdir || echo "httpdir is not exist.please check"
echo "You are in `pwd` now"
#You may need to install some other tool packeges,if you have any problem when compile,you can remove /dev/null below to see stderr info to help you troubleshoot
./configure  --prefix=/sunny66/httpd66 &>/dev/null;
[ $? = 0 ] &&  make &>/dev/null|| echo "Please check configure" 
[ $? = 0 ] && make install &>/dev/null || echo "Please check make";
[ $? = 0 ] && echo " httpd is successful install" || echo "Warning,install is failure,Please check make install"
#set init config,especially add apache and bin to PATH
echo 'export PATH=/sunny66/httpd66/bin:$PATH' > /etc/profile.d/httpd22.sh
. /etc/profile.d/httpd22.sh && echo "Now PATH is $PATH"
echo "MANPATH /sunny66/sunny66/man" >> /etc/man.config;
echo "ServerName localhost:80" >>/sunny66/httpd66/conf/httpd.conf
sed -i 's/It works!/Welcome to Sunny Home/g' /sunny66/httpd66/htdocs/index.html
apachectl start;
#close firewall and selinux
setenforce 0;
iptables -F;
#check port status
ss -ntl | grep 80;
[ $? = 0 ] && echo "httpd is success.you can open web to check" || echo "Apache do not start"
#unset var
unset httpdpkg;
unset os_version;
unset httpdir;
echo "Congratulation";
exit 0;
 
