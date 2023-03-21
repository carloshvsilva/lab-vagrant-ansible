#!/bin/bash

#Instalação Ansible
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible -y
sudo apt install ansible -y

#Permitindo qualquer chave SSH
sudo sed -i "s/#   StrictHostKeyChecking ask/    StrictHostKeyChecking no/" /etc/ssh/ssh_config

#Alterando ansible.conf
#sudo sed -i "s/#record_host_keys=False/record_host_keys=False/" /etc/ansible/ansible.cfg

#Executando ansible
ansible-playbook -i ansible/servers ansible/main.yml