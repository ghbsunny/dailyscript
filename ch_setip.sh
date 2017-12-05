#!/bin/bash
# ----------------+---------------------------------------+
# * Author        : Sunny
# * Email         : ghbsunny@sina.com
# * Create time   : 2017-08-19 
# * Last modified : 
# * Filename      : setip.sh
# * Description   : 修改网卡配置信息
# * version       : 1.1
# ----------------+---------------------------------------+

export time=`date +%Y%m%d%H%M`
export dir="/etc/sysconfig/network-scripts"


function init {
sed -i "s/PREFIX.*$//g" $dir/ifcfg-$netcard
sed -i 's/BOOTPROTO.*$/BOOTPROTO=static/g' $dir/ifcfg-$netcard
sed -i 's/ONBOOT.*$/ONBOOT=yes/g' $dir/ifcfg-$netcard
grep DNS1  $dir/ifcfg-$netcard &>/dev/null && sed -i 's/DNS1.*$/DNS1=8.8.8.8/g' $dir/ifcfg-$netcard  ||sed -i '/GATEWAY/ i DNS1=8.8.8.8' $dir/ifcfg-$netcard
grep DNS2  $dir/ifcfg-$netcard&>/dev/null  && sed -i 's/DNS2.*$/DNS2=172.18.0.1/g' $dir/ifcfg-$netcard  ||sed -i '/GATEWAY/ i DNS2=172.18.0.1' $dir/ifcfg-$netcard
read -p "please input your ip:" ip
read -p "Please input your netmask: " netmask
read -p "Please input your gateway: " gateway
ping -c 1 -w 1 $ip && { echo "$ip is used,please check";exit 6; } ||echo "$ip is not used,it is ok"
sed -i "s/IPADDR.*$/IPADDR=$ip/g" $dir/ifcfg-$netcard
grep NETMASK  $dir/ifcfg-$netcard&>/dev/null  && sed -i "s/NETMASK.*$/NETMASK=$netmask/g" $dir/ifcfg-$netcard  || sed -i "/IPADDR/ a NETMASK=$netmask" $dir/ifcfg-$netcard
sed -i "s/GATEWAY.*$/GATEWAY=$gateway/g"  $dir/ifcfg-$netcard
sed -i "/^$/d"  $dir/ifcfg-$netcard
}

function init2 {
sed -i 's/HWADDR.*$//g' $dir/ifcfg-$netcard
sed -i 's/UUID.*//g' $dir/ifcfg-$netcard
sed -i "/^$/d"  $dir/ifcfg-$netcard
}

cd $dir
[ -e ifcfg-eth0 ] && cp ifcfg-eth0 ifcfg-eth0.$time.bak || echo "If you are in centOS6,Please check whether your eth0 is exist"
[ -e ifcfg-ens33 ] && cp ifcfg-ens33 ifcfg-ens33.$time.bak || echo "If you are in centOS7,Please check whether your ens33 is exist"

echo -e "提示:\n 输入eth0 修改CentOS6上的eth0 \n 输入eth1 修改CentOS6上的eth1 \n 输入ens33 修改CentOS7上的ens33 \n 输入ens37 修改CentOS7上的ens37 \n 输入other 修改其他网卡"
read -p "请输入你要更改的网卡，进行相应更改配置: " netcard

case $netcard in

eth0)

init
service NetworkManager stop

;;

eth1)

[ -e ifcfg-eth1 ] && cp ifcfg-eth1 ifcfg-eth1.$time.bak || cp ifcfg-eth0 ifcfg-eth1
  init;
  init2;
sed -i 's/DEVICE.*$/DEVICE=eth1/g' $dir/ifcfg-$netcard
sed -i 's/NAME.*/NAME=eth1/g' $dir/ifcfg-$netcard
service NetworkManager stop

;;


ens33)

init
;;

ens37)

[ -e ifcfg-ens37 ] && cp ifcfg-ens37 ifcfg-ens37.$time.bak || cp ifcfg-ens33 ifcfg-ens37
init;
init2;
sed -i 's/DEVICE.*$/DEVICE=ens37/g' $dir/ifcfg-$netcard
sed -i 's/NAME.*/NAME=ens37/g' $dir/ifcfg-$netcard
;;

other)

read -p "Please input your netcard,such as ifcfg-eth0 or ifcfg-ens33: " netcard
[ -e ifcfg-ens33 -a ! -e ifcfg-$netcard ] && { cp ifcfg-ens33 ifcfg-$netcard;echo "create new ifcfg-$netcard"; } 
[ -e ifcfg-ens33 -a -e ifcfg-$netcard ] && echo " ifcfg-$netcard already exist "
[ -e ifcfg-eth0 -a ! -e ifcfg-$netcard ] && { cp ifcfg-eth0 ifcfg-$netcard;service NetworkManager stop;echo "create new ifcfg-$netcard"; }
[ -e ifcfg-eth0 -a -e ifcfg-$netcard ] && { echo "ifcfg-$netcard already exist";service NetworkManager stop; }
rm -rf ifcfg-other
init;
init2;
sed -i "s/DEVICE.*$/DEVICE=$netcard/g" $dir/ifcfg-$netcard
sed -i "s/NAME.*/NAME=$netcard/g" $dir/ifcfg-$netcard
;; 

*)
  mv *.bak  ifcfgbak
  echo "Please input an internet card"
  exit 18;
;;
esac


[ -e ifcfgbak ] && echo "dir ifcfgbak already exist" ||  mkdir -p $dir/ifcfgbak 
mv *.bak ifcfgbak

service network restart

unset time
unset dir
