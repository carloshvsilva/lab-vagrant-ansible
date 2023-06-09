﻿<h1 align="center"> Laboratório para praticar Ansible </h1>
<h4 align="center"> 
    :construction:  Projeto em construção  :construction:
</h4>
 
 Este laboratório consiste no provisionamento de uma máquina virtual que é designada como servidor Ansible onde você pode adicionar os hosts que devem receber as atualizações através do Ansible. Pode ser provisionado tanto em Linux quanto em Windows através do hypervisor Virtual Box.

 # :hammer: Requisitos
 - BIOS do equipamento atualizada
 - S.O. com updates atualizados
 - Oracle Virtual Box atualizado
 - Vagrant Instalado


 # :wrench: Configuração Vagrant
 - A raiz do projeto possuí o arquivo Vagrantfile e os diretórios ansible e scripts:
    - `Vagrantfile`: provisiona cada máquina virtual, vem com a definição de 5 máquinas virtuais configuradas e pode ser alterado conforme suas necessidades.
    - `scripts`: contém os scripts que providenciam as instalações e principais definições para funcionamento do Ansible no servidor e nos hosts. As máquinas virtuais definidas no arquivo Vagrantfile devem conter um script para executar esses pré requistos para funcionamento do Ansible.
    - `ansible`: contém as roles, playbook e arquivo de hosts necessários para funcionamento do Ansible e é compartilhada para a máquina virtual servidor do Ansible. Proporcionando uma edição fora do ambiente Linux, onde é possivel, como exemplo, a utilização do VS Code para edição do playbook e roles. 
        - Quando é executado o comando `vagrant up` a última máquina virtual a ser provisionada é o servidor Vagrant. Este servidor definido como `vm01` no Vagrantfile executa o script `server.sh` que executa o playbook contido em `ansible/main.yml` para os hosts definidos em `ansible/servers`, a execução do playbook pode ser inibida comentando a linha no script.
        - O servidor `vm01` pode ser acessado pelo comando `vagrant ssh vm01` onde é possível executar as alterações de playbook e roles editadas.
        - Todos os host alterados, excluídos ou incluído do Vagrantfile devem ser alterados no arquivo `ansible/servers`


 # :arrow_forward: Executando o projeto
 - Faça um clone do projeto para seu diretório de trabalho
 - Acesse a pasta raiz do projeto com o terminal em modo administrativo
 - Execute o comando `vagrant up`e aguardar o provisionamento das máquinas virtuais
 - Ao final execute `vagrant ssh vm01` para acessar o servidor ansible.
 - Agora é só praticar
    - Edite o playbook e roles pela pasta `ansible` do projeto ou pela pasta `home/ansible` do servidor
    - Execute qualquer comando de execução do playbook
