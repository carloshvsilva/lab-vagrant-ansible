# Laboratório para praticar Ansible
 
 Este laboratório consiste no provisionamento de uma máquina virtual que é designada como servidor Ansible onde você pode adicionar os hosts que devem receber as atualizações através do Ansible.
 Este laboratório pode ser provisionado tanto em Linux quanto em Windows através do hypervisor Virtual Box.

 # Pré-requisitos para uso
 - BIOS do equipamento atualizada
 - S.O. com updates atualizados
 - Oracle Virtual Box
 - Vagrant Instalado (link)


 # Configuração Vagrant
// Local das configurações Vagrant
 - Estrutura
 A raiz do projeto possuí o arquvio Vagrantfile e os diretórios ansible e scripts:
    - O arquvio Vagrantfile provisiona cada máquina virtual, vem com a definição de 5 máquinas virtuais configuradas e pode ser alterado conforme suas necessidades.
    - O diretório scripts contém os scripts que providenciam as instalações e principais definições para funcionamento do Ansible no servidor e nos hosts. As máquinas virtuais definidas no arquivos Vagrantfile devem conter um script para executar esses pré requistos para funcionamento do Ansible.
    - O diretório ansible contém as roles, playbook e arquivo de hosts necessários para funcionamento do Ansible 


 # Utilizando Ansible
 Quando é executado o comando "vagrant up" a ultima máquina virtual a ser provisionada é o servidor Vagrant. 
