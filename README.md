<h1 align="center"> Laboratório para praticar Ansible </h1>
<h4 align="center"> 
    :construction:  Projeto em construção  :construction:
</h4>
 
 Este laboratório consiste no provisionamento de uma máquina virtual que é designada como servidor Ansible onde você pode adicionar os hosts que devem receber as atualizações através do Ansible.
 Este laboratório pode ser provisionado tanto em Linux quanto em Windows através do hypervisor Virtual Box.

 # :hammer: Pré-requisitos
 - BIOS do equipamento atualizada
 - S.O. com updates atualizados
 - Oracle Virtual Box
 - Vagrant Instalado (link)


 # :wrench: Configuração Vagrant
 - A raiz do projeto possuí o arquvio Vagrantfile e os diretórios ansible e scripts:
    - 'Vagrantfile': provisiona cada máquina virtual, vem com a definição de 5 máquinas virtuais configuradas e pode ser alterado conforme suas necessidades.
    - 'scripts': contém os scripts que providenciam as instalações e principais definições para funcionamento do Ansible no servidor e nos hosts. As máquinas virtuais definidas no arquivos Vagrantfile devem conter um script para executar esses pré requistos para funcionamento do Ansible.
    - 'ansible': contém as roles, playbook e arquivo de hosts necessários para funcionamento do Ansible e é compartilhada para a máquina virtual servidor do Ansible. Proporsionando uma edição fora do ambiente Linux, onde é possíve, como exemplo, a utilização do VS Code para edição do playbook e roles. 


 <h1 align="center"> Utilizando Ansible </h1>
 Quando é executado o comando "vagrant up" a ultima máquina virtual a ser provisionada é o servidor Vagrant. Este servidor definido como "vm01" no Vagrantfile executa o script "server.sh" que executa o playbook contido em "ansible/main.yml" para os hosts definidos em "ansible/servers", a execução do playbook pode ser inibida comentando a linha no script.
 O servidor "vm01" pode ser acessado pelo comando "vagrant ssh" onde é possível executar as alterações de playbook e roles editadas.
 Todos os host alterados, excluídos ou incluído do Vagrantfile devem ser alterados no arquivo ansible/servers.
