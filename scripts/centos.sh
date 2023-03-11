#!/bin/bash

#Atualiza repositório
yum install epel-release -y

#Instação Ansible
yum install ansible -y

#Liberar acesso SSH
sudo sed -i "s/PasswordAuthentication no/#PasswordAuthentication no/" /etc/ssh/sshd_config
sudo sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/" /etc/ssh/sshd_config
sudo systemctl restart sshd.service

#Alterando ansible.conf
sudo sed -i "s/#record_host_keys=False/record_host_keys=False/" /etc/ansible/ansible.cfg

#Altera senha root
sudo echo root:admin | chpasswd