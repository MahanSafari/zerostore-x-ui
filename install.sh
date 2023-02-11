Hikiso`
#1000



LIVE
Hikiso`

Hikiso`

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ
Direct Message
Direct Message:神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ
AKA
! Lie? No Lie
Search

region
Automatic







chat
February 11, 2023

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 1:52 PM
؟

Hikiso` — Today at 2:00 PM
pannelo ok kon
[2:00 PM]
saat 3 ina mikhan
[2:00 PM]
pannelo

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:00 PM
<!DOCTYPE html>
<html lang="en">
{{template "head" .}}
<style>
    body{
        background-image: url("https://images.pling.com/img/00/00/62/69/92/1655927/e034db8447ac1b13b29a10934d0a96af6d7859080bd2f16f12aa1378f1a214ff442e.jpg");
Expand
index.html
15 KB
[2:00 PM]
بگیر
[2:00 PM]
اوکیش کردم
[2:00 PM]
فقط خودت باید تو فایلا بذاری

Hikiso` — Today at 2:01 PM
sahih
[2:01 PM]
index e
[2:01 PM]
ok

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:01 PM
ایندکس تو بخش وب ایک یو آی

Hikiso` — Today at 2:01 PM
huh
[2:01 PM]
bad chejuri biaram bala
[2:02 PM]
pannelo
[2:02 PM]
:/

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:02 PM
اینشو نمیدونم
[2:02 PM]
من فقط ادیتشو زدم

Hikiso` — Today at 2:02 PM
xd

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:02 PM
xD

Hikiso` — Today at 2:02 PM
hmmm

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:02 PM
بیا ویس
[2:02 PM]
بدو ویس
[2:02 PM]
بپر ویس
神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ
 started a call that lasted 22 minutes.
 — Today at 2:02 PM

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:02 PM
ببین

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:16 PM
#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

cur_dir=$(pwd)

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Fatal error：${plain} Please run this script with root privilege \n " && exit 1

# check os
if [[ -f /etc/redhat-release ]]; then
    release="centos"
elif cat /etc/issue | grep -Eqi "debian"; then
    release="debian"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
    release="ubuntu"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
elif cat /proc/version | grep -Eqi "debian"; then
    release="debian"
elif cat /proc/version | grep -Eqi "ubuntu"; then
    release="ubuntu"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
else
    echo -e "${red} check system OS failed,please contact with author! ${plain}\n" && exit 1
fi

arch=$(arch)

if [[ $arch == "x86_64" || $arch == "x64" || $arch == "amd64" ]]; then
    arch="amd64"
elif [[ $arch == "aarch64" || $arch == "arm64" ]]; then
    arch="arm64"
elif [[ $arch == "s390x" ]]; then
    arch="s390x"
else
    arch="amd64"
    echo -e "${red} Fail to check system arch,will use default arch here: ${arch}${plain}"
fi

echo "arch: ${arch}"

if [ $(getconf WORD_BIT) != '32' ] && [ $(getconf LONG_BIT) != '64' ]; then
    echo "x-ui dosen't support 32bit(x86) system,please use 64 bit operating system(x86_64) instead,if there is something wrong,plz let me know"
    exit -1
fi

os_version=""

# os version
if [[ -f /etc/os-release ]]; then
    os_version=$(awk -F'[= ."]' '/VERSION_ID/{print $3}' /etc/os-release)
fi
if [[ -z "$os_version" && -f /etc/lsb-release ]]; then
    os_version=$(awk -F'[= ."]+' '/DISTRIB_RELEASE/{print $2}' /etc/lsb-release)
fi

if [[ x"${release}" == x"centos" ]]; then
    if [[ ${os_version} -le 6 ]]; then
        echo -e "${red} please use CentOS 7 or higher version ${plain}\n" && exit 1
    fi
elif [[ x"${release}" == x"ubuntu" ]]; then
    if [[ ${os_version} -lt 16 ]]; then
        echo -e "${red} please use Ubuntu 16 or higher version ${plain}\n" && exit 1
    fi
elif [[ x"${release}" == x"debian" ]]; then
    if [[ ${os_version} -lt 8 ]]; then
        echo -e "${red} please use Debian 8 or higher version ${plain}\n" && exit 1
    fi
fi

install_base() {
    if [[ x"${release}" == x"centos" ]]; then
        yum install wget curl tar -y
    else
        apt install wget curl tar -y
    fi
}

#This function will be called when user installed x-ui out of sercurity
config_after_install() {
    echo -e "${yellow} Install/update finished need to modify panel settings out of security ${plain}"
    read -p "are you continue,if you type n will skip this at this time[y/n]": config_confirm
    if [[ x"${config_confirm}" == x"y" || x"${config_confirm}" == x"Y" ]]; then
        read -p "please set up your username:" config_account
        echo -e "${yellow}your username will be:${config_account}${plain}"
        read -p "please set up your password:" config_password
        echo -e "${yellow}your password will be:${config_password}${plain}"
        read -p "please set up the panel port:" config_port
        echo -e "${yellow}your panel port is:${config_port}${plain}"
        echo -e "${yellow}initializing,wait some time here...${plain}"
        /usr/local/x-ui/x-ui setting -username ${config_account} -password ${config_password}
        echo -e "${yellow}account name and password set down!${plain}"
        /usr/local/x-ui/x-ui setting -port ${config_port}
        echo -e "${yellow}panel port set down!${plain}"
    else
... (68 lines left)
Collapse
install.sh
7 KB
[2:17 PM]

web.zip
1.55 MB

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:23 PM
من میرم کار دارم
[2:23 PM]
اوک کردی بگو

Hikiso` — Today at 2:27 PM
ipv6 bedard mikhore
[2:27 PM]
?

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:27 PM
نه
Hikiso`
 started a call.
 — Today at 2:58 PM

Hikiso` — Today at 2:58 PM
bia

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 2:59 PM
چی شده؟

Hikiso` — Today at 2:59 PM
bia
[2:59 PM]
bbin chiaro bayad edit mizdm

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 3:00 PM
خو کجا ریدی الان

Hikiso` — Today at 3:00 PM
hija

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 3:00 PM
ویس نمیتونم بیام

Hikiso` — Today at 3:00 PM
bia bbin

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 3:00 PM
شرایطش اینش

Hikiso` — Today at 3:00 PM
harf nzn

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 3:00 PM
عجببب
[3:00 PM]
بصبر

Hikiso` — Today at 3:00 PM
stream mikonam
[3:00 PM]
chat bde
[3:00 PM]
IPv4    91.107.177.233
IPv6    2a01:4f8:1c17:d7c1::/64
User    root
Password    eiAdRtbEU9rkNCPAud4w
[3:00 PM]
server az hetzner grftm ine

神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ — Today at 3:01 PM
خوب

Message @神 ᜴💍|𝓹𝓸𝓸𝓻𝓲𝔂𝓪.𝔂𝓽༆❦ ZєRᎧ
﻿




#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

cur_dir=$(pwd)

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Fatal error：${plain} Please run this script with root privilege \n " && exit 1

# check os
if [[ -f /etc/redhat-release ]]; then
    release="centos"
elif cat /etc/issue | grep -Eqi "debian"; then
    release="debian"
elif cat /etc/issue | grep -Eqi "ubuntu"; then
    release="ubuntu"
elif cat /etc/issue | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
elif cat /proc/version | grep -Eqi "debian"; then
    release="debian"
elif cat /proc/version | grep -Eqi "ubuntu"; then
    release="ubuntu"
elif cat /proc/version | grep -Eqi "centos|red hat|redhat"; then
    release="centos"
else
    echo -e "${red} check system OS failed,please contact with author! ${plain}\n" && exit 1
fi

arch=$(arch)

if [[ $arch == "x86_64" || $arch == "x64" || $arch == "amd64" ]]; then
    arch="amd64"
elif [[ $arch == "aarch64" || $arch == "arm64" ]]; then
    arch="arm64"
elif [[ $arch == "s390x" ]]; then
    arch="s390x"
else
    arch="amd64"
    echo -e "${red} Fail to check system arch,will use default arch here: ${arch}${plain}"
fi

echo "arch: ${arch}"

if [ $(getconf WORD_BIT) != '32' ] && [ $(getconf LONG_BIT) != '64' ]; then
    echo "x-ui dosen't support 32bit(x86) system,please use 64 bit operating system(x86_64) instead,if there is something wrong,plz let me know"
    exit -1
fi

os_version=""

# os version
if [[ -f /etc/os-release ]]; then
    os_version=$(awk -F'[= ."]' '/VERSION_ID/{print $3}' /etc/os-release)
fi
if [[ -z "$os_version" && -f /etc/lsb-release ]]; then
    os_version=$(awk -F'[= ."]+' '/DISTRIB_RELEASE/{print $2}' /etc/lsb-release)
fi

if [[ x"${release}" == x"centos" ]]; then
    if [[ ${os_version} -le 6 ]]; then
        echo -e "${red} please use CentOS 7 or higher version ${plain}\n" && exit 1
    fi
elif [[ x"${release}" == x"ubuntu" ]]; then
    if [[ ${os_version} -lt 16 ]]; then
        echo -e "${red} please use Ubuntu 16 or higher version ${plain}\n" && exit 1
    fi
elif [[ x"${release}" == x"debian" ]]; then
    if [[ ${os_version} -lt 8 ]]; then
        echo -e "${red} please use Debian 8 or higher version ${plain}\n" && exit 1
    fi
fi

install_base() {
    if [[ x"${release}" == x"centos" ]]; then
        yum install wget curl tar -y
    else
        apt install wget curl tar -y
    fi
}

#This function will be called when user installed x-ui out of sercurity
config_after_install() {
    echo -e "${yellow} Install/update finished need to modify panel settings out of security ${plain}"
    read -p "are you continue,if you type n will skip this at this time[y/n]": config_confirm
    if [[ x"${config_confirm}" == x"y" || x"${config_confirm}" == x"Y" ]]; then
        read -p "please set up your username:" config_account
        echo -e "${yellow}your username will be:${config_account}${plain}"
        read -p "please set up your password:" config_password
        echo -e "${yellow}your password will be:${config_password}${plain}"
        read -p "please set up the panel port:" config_port
        echo -e "${yellow}your panel port is:${config_port}${plain}"
        echo -e "${yellow}initializing,wait some time here...${plain}"
        /usr/local/x-ui/x-ui setting -username ${config_account} -password ${config_password}
        echo -e "${yellow}account name and password set down!${plain}"
        /usr/local/x-ui/x-ui setting -port ${config_port}
        echo -e "${yellow}panel port set down!${plain}"
    else
        echo -e "${red}Canceled, all setting items are default settings${plain}"
    fi
}

install_x-ui() {
    systemctl stop x-ui
    cd /usr/local/

    if [ $# == 0 ]; then
        last_version=$(curl -Ls "https://api.github.com/repos/hossinasaadi/x-ui/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
        if [[ ! -n "$last_version" ]]; then
            echo -e "${red}refresh x-ui version failed,it may due to Github API restriction,please try it later${plain}"
            exit 1
        fi
        echo -e "get x-ui latest version succeed: ${last_version}, begin to install..."
        wget -N --no-check-certificate -O /usr/local/x-ui-linux-${arch}.tar.gz https://github.com/hossinasaadi/x-ui/releases/download/${last_version}/x-ui-linux-${arch}.tar.gz
        if [[ $? -ne 0 ]]; then
            echo -e "${red}dowanload x-ui failed,please be sure that your server can access Github ${plain}"
            exit 1
        fi
    else
        last_version=$1
        url="https://github.com/hossinasaadi/x-ui/releases/download/${last_version}/x-ui-linux-${arch}.tar.gz"
        echo -e "begin to install x-ui v$1"
        wget -N --no-check-certificate -O /usr/local/x-ui-linux-${arch}.tar.gz ${url}
        if [[ $? -ne 0 ]]; then
            echo -e "${red}dowanload x-ui v$1 failed,please check the verison exists${plain}"
            exit 1
        fi
    fi

    if [[ -e /usr/local/x-ui/ ]]; then
        rm /usr/local/x-ui/ -rf
    fi

    tar zxvf x-ui-linux-${arch}.tar.gz
    rm x-ui-linux-${arch}.tar.gz -f
    cd x-ui
    chmod +x x-ui bin/xray-linux-${arch}
    cp -f x-ui.service /etc/systemd/system/
    wget --no-check-certificate -O /usr/bin/x-ui https://raw.githubusercontent.com/hossinasaadi/x-ui/main/x-ui.sh
    chmod +x /usr/local/x-ui/x-ui.sh
    chmod +x /usr/bin/x-ui
    config_after_install
    #echo -e "如果是全新安装，默认网页端口为 ${green}54321${plain}，用户名和密码默认都是 ${green}admin${plain}"
    #echo -e "请自行确保此端口没有被其他程序占用，${yellow}并且确保 54321 端口已放行${plain}"
    #    echo -e "若想将 54321 修改为其它端口，输入 x-ui 命令进行修改，同样也要确保你修改的端口也是放行的"
    #echo -e ""
    #echo -e "如果是更新面板，则按你之前的方式访问面板"
    #echo -e ""
    systemctl daemon-reload
    systemctl enable x-ui
    systemctl start x-ui
    echo -e "${red}x-ui v${last_version}${plain} install finished,it is working now..."
    echo -e ""
    echo -e "Zero Store x-ui control menu usages: "
    echo -e "----------------------------------------------"
    echo -e "x-ui start        - Start     x-ui"
    echo -e "x-ui stop         - Stop      x-ui"
    echo -e "x-ui restart      - Restart   x-ui"
    echo -e "x-ui uninstall    - Uninstall x-ui"
    echo -e "----------------------------------------------"
}

echo -e "${green}excuting...${plain}"
install_base
install_x-ui $1
