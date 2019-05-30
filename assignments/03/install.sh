#!/usr/bin/env bash

# b. install python 2.7.14 in local
sudo yum update -y
sudo yum upgrade -y
sudo yum install gcc openssl-devel bzip2-devel -y
sudo yum install wget -y
cd /usr/src/
sudo wget https://www.python.org/ftp/python/2.7.14/Python-2.7.14.tgz
sudo tar xzf Python-2.7.14.tgz
cd Python-2.7.14
sudo ./configure --enable-optimizations
sudo make altinstall

# c. install Apache Web Server
sudo yum update -y
sudo yum upgrade -y
sudo yum update httpd
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# d. install xrdp & MATE Desktop
# sudo yum install -y epel-release
sudo yum update -y
sudo yum upgrade -y
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
sudo yum install -y xrdp
sudo systemctl enable xrdp
sudo systemctl start xrdp
## port
# sudo firewall-cmd --add-port=3389/tcp --permanent
# sudo firewall-cmd --reload
## MATE Desktop
# sudo yum groupinstall "Development Tools" -y
sudo yum update -y
sudo yum upgrade -y
sudo yum groupinstall -y "MATE Desktop"
echo "mate-session" > ~/.Xclients
chmod a+x ~/.Xclients
echo -e "root\nroot" | sudo passwd root
sudo reboot
