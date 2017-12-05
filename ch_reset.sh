#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-01 
# * Last modified : 2017-08-26 
# * Filename      : reset.sh
# * Description   : set init environment before use system
# * version       : 1.1
# ----------------+---------------------------------------+
#脚本里路径PATH采用添加备注，光盘的挂载也是采用备注，多次执行脚本，这两个地方确认正常后要删掉旧信息
#脚本执行完后要运行.bashrc 和 /etc/profile两个文件使得配置生效


#set var
export time=`date +%Y%m%d%H%M`
export os_version=`cat /etc/system-release | grep -o " [0-9]"| cut -d " " -f2`

#config in centos6 & 7

[ -e  /etc/yum.repos.d/repobak ] || mkdir /etc/yum.repos.d/repobak
mv -f /etc/yum.repos.d/*.repo /etc/yum.repos.d/repobak

cd ~
[ -e ~/bakfile ] || mkdir  bakfile
mv  .bashrc  bakfile/.bashrc.$time.bak
[ -e ~/.vimrc ] &&  mv  .vimrc   bakfile/.vimrc.$time.bak
mv   /etc/issue  bakfile/issue.$time.bak
mv   /etc/issue.net  bakfile/issue.net.$time.bak
mv  /etc/motd   bakfile/motd.$time.bak


cat >> ~/.bashrc <<eof
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
 alias ls='ls --color=auto'
 alias grep='grep --color=auto'
 alias cdnet='cd /etc/sysconfig/network-scripts/'
 alias editrepo='vim /etc/yum.repos.d/sunny.repo'
 alias cdrepo='cd /etc/yum.repos.d/'
 alias cdnfs='cd /nfsfile/share/script'
 alias cdshare='cd /sharedisk/script/'
 export PS1="[\[\e[31;40m\]\u\[\e[37;40m\]@\[\e[34;40m\]\h\[\e[37;40m\] \W]\\\\$\[\e[0m"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi


eof

#set vim edit window
cat >> ~/.vimrc << eof
"引号开头的行是备注信息，注意是设置由vim创建的.sh开头的不存在的文件添加信息，存在的文件不改变内容
"同时自动将.sh后缀的文件设置为可执行权限，光标放到最后一行
set nu
set sm
syntax on
set tabstop=4
set ai 
"set cursorline

autocmd BufNewFile *.sh exec ":call SetTitle()"
func SetTitle()
      if expand("%:e") == 'sh'
      call setline(1,"#!/bin/bash")
      call setline(2,"#")
      call setline(3,"#******************************************************************************")
      call setline(4,"#Author:               Sunny")
#Email:                ghbsunny@sina.com
      call setline(6,"#Date:                 ".strftime("%Y-%m-%d"))
      call setline(7,"#FileName:             ".expand("%"))
      call setline(8,"#version:              1.0")
      call setline(9,"#Your change info:     ")
      call setline(10,"#Description:          For")
      call setline(11,"#Copyright(C):         ".strftime("%Y")."  All rihts reserved")
      call setline(12,"#*****************************************************************************")
      call setline(13,"")
      endif
endfunc

" Define a function that can tell me if a file is executable
 function! FileExecutable (fname)
   execute "silent! ! test -x" a:fname
   return v:shell_error
   endfunction
" Automatically make Perl and Shell scripts executable if they aren't  already
 au BufWritePost *.sh,*.pl,*.cgi if FileExecutable("%:p") | :!chmod a+x %  ^@ endif

autocmd BufNewFile * normal G

eof

#设置登录前提示信息
cat >> /etc/issue <<eof
Alert:This is private machine
machine type:\m     kenernel: \r
tty:    \l     tty count:\u
system: \s     version:  \v
date:   \d     time:     \t
Hostname:    \n
[34m Welcome,Be careful before you commit any cmd [0m
eof
#设置远程telnet登录前提示信息
cat >>/etc/issue.net<<eof
CentOS release 6.5 (Final)
Kernel \r on an \m
[31m U are login private server!Pay attention! [0m

eof

#设置登录成功后提示信息
cat >> /etc/motd <<eof
[31m Notice:please backup file before you change any thing[0m
[34m This is private machine![0m
[35m Do not do any harm to the host [0m
eof


case $os_version in  
6)

#编辑网卡命令别名
sed -i "/# Source/i alias editnet='vim /etc/sysconfig/network-scripts/ifcfg-eth0'" ~/.bashrc


##配置yum仓库
cat >> /etc/yum.repos.d/sunny.repo <<eof
[sunny]
name=sunny-media-yum-source
baseurl=file:///media/
gpgcheck=1
enabled=1
gpgkey=file:///media/cd/RPM-GPG-KEY-CentOS-6

[sohu]
name=sohu-source
baseurl=http://mirrors.sohu.com/centos/6/os/i386/
gpgcheck=1
enabled=0
gpgkey=http://mirrors.sohu.com/centos/6/os/i386/RPM-GPG-KEY-CentOS-6


[sunnyftp]
name=sunny-build-ftp-for-yum
baseurl=ftp://172.18.254.71/pub/centos/$releasever/
gpgcheck=1
enabled=0
gpgkey=ftp://172.18.254.71/pub/centos/$releasever/RPM-GPG-KEY-CentOS-$releasever

[aliyun]
name=aliyun_epel
baseurl=https://mirrors.aliyun.com/epel/6/i386/
gpgcheck=0
enabled=0

eof

#关闭防火墙和NM
service NetworkManager stop &>/dev/null;
chkconfig NetworkManager off &>/dev/null;
chkconfig iptables off &>/dev/null;
service iptables stop &>/dev/null;

;;
7)

#编辑网卡命令别名
sed -i "/# Source/i alias editnet='vim /etc/sysconfig/network-scripts/ifcfg-ens33'" ~/.bashrc


##配置yum仓库
cat >> /etc/yum.repos.d/sunny.repo <<eof
[sunny]
name=sunny-media-yum-source
baseurl=file:///media/
gpgcheck=1
enabled=1
gpgkey=file:///media/RPM-GPG-KEY-CentOS-7

[sohu]
name=sohu-source
baseurl=http://mirrors.sohu.com/centos/7/os/x86_64/
gpgcheck=1
enabled=0
gpgkey=http://mirrors.sohu.com/centos/7/os/x86_64/RPM-GPG-KEY-CentOS-7

[sunnyftp]
name=sunny-build-ftp-for-yum
baseurl=ftp://172.18.254.71/pub/centos/$releasever/
gpgcheck=1
enabled=0
gpgkey=ftp://172.18.254.71/pub/centos/$releasever/RPM-GPG-KEY-CentOS-$releasever

[sunnyhttp]
name=sunny-build-for-third-part-packet
baseurl=http://172.18.254.71/sunny/
enabled=0
gpgcheck=0

[epel]
name=class_epel
baseurl=http://172.16.0.1/fedora-epel/7/x86_64/
enbaled=0
gpgcheck=0

[aliepel]
name=aliyun_epel
baseurl=https://mirrors.aliyun.com/epel/7Server/x86_64/
gpgcheck=0
enabled=0
eof

#关闭防火墙
systemctl disable firewalld.service &>/dev/null
systemctl stop firewalld.service &>/dev/null

;;

esac


#设置初始用户,tom首次登录要修改复杂密码
id tom &>/dev/null || useradd tom &>/dev/null
echo "Pass5678" | passwd --stdin tom &>/dev/null
passwd -e tom &>/dev/nulll


#设置PATH变量

sed -i  's/^export PATH=/#export PATH=/g' /etc/profile
sed -i  '/unset i/ i export PATH=$PATH:/root/script' /etc/profile


##关闭selinux
setenforce 0
sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config

##设置自动挂载光盘

sed  -i 's@^/dev/cdrom@#/dev/cdrom@g' /etc/fstab
echo "/dev/cdrom/             /media                  iso9660    defaults        0 0 " >> /etc/fstab
mount -a
##安装软件
rpm -q tree &> /dev/null || yum -y install tree &>/dev/null;
rpm -q ftp &> /dev/null || yum -y install ftp &>/dev/null;
rpm -q lftp &> /dev/null || yum -y install lftp &>/dev/null;
rpm -q telnet &> /dev/null || yum -y install telnet &>/dev/null;
rpm -q lrzsz &>/dev/null || yum -y install lrzsz &>/dev/null;
rpm -q autofs &>/dev/null || yum -y install autofs &>/dev/null;
rpm -q expect &>/dev/null || yum -y install expect &>/dev/null;

#开启常用服务
chkconfig autofs restart &>/dev/null
chkconfig autofs on &>/dev/null




unset os_version
unset time

exit
