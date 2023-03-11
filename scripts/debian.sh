#!/bin/bash
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu MATCHING_UBUNTU_CODENAME_HERE main" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt update -y
apt install ansible -y

#Alterando ansible.conf
sudo sed -i "s/#record_host_keys=False/record_host_keys=False/" /etc/ansible/ansible.cfg

#Altera senha root
sudo echo root:admin | chpasswd

