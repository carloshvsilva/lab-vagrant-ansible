Vagrant.configure("2") do |config|
    config.vm.define "vm02" do |vm02|
        vm02.vm.provider :virtualbox do |vb|
            vb.name = "lab-vm-02"
            vb.customize ["modifyvm", :id, "--memory", "1024"]
            vb.customize ["modifyvm", :id, "--cpus", "2"] 
        end   
        vm02.vm.box = "generic/debian9"
        vm02.vm.network "forwarded_port", guest: 80, host: 82
        vm02.vm.network "public_network", ip: "192.168.100.52"
        vm02.vm.provision "shell",
            path: "scripts/debian.sh"
    end

    config.vm.define "vm03" do |vm03|
        vm03.vm.provider :virtualbox do |vb|
            vb.name = "lab-vm-03"
            vb.customize ["modifyvm", :id, "--memory", "512"]
            vb.customize ["modifyvm", :id, "--cpus", "1"] 
        end 
        
        vm03.vm.box = "centos/7"
        vm03.vm.network "forwarded_port", guest: 80, host: 83
        vm03.vm.network "public_network", ip: "192.168.100.53"
        vm03.vm.provision "shell",
            path: "scripts/centos.sh"
    end

    config.vm.define "vm04" do |vm04|
        vm04.vm.provider :virtualbox do |vb|
            vb.name = "lab-vm-04"
            vb.customize ["modifyvm", :id, "--memory", "512"]
            vb.customize ["modifyvm", :id, "--cpus", "1"] 
        end 
        
        vm04.vm.box = "centos/7"
        vm04.vm.network "forwarded_port", guest: 80, host: 84
        vm04.vm.network "public_network", ip: "192.168.100.54"
        vm04.vm.provision "shell",
            path: "scripts/centos.sh"
    end

    config.vm.define "vm05" do |vm05|
        vm05.vm.provider :virtualbox do |vb|
            vb.name = "lab-vm-05"
            vb.customize ["modifyvm", :id, "--memory", "512"]
            vb.customize ["modifyvm", :id, "--cpus", "1"] 
        end 
        
        vm05.vm.box = "centos/7"
        vm05.vm.network "forwarded_port", guest: 80, host: 85
        vm05.vm.network "public_network", ip: "192.168.100.55"
        vm05.vm.provision "shell",
            path: "scripts/centos.sh"
    end
    
    ### Não remover - Ansible Server
    config.vm.define "vm01" do |vm01|
        vm01.vm.provider :virtualbox do |vb|
            vb.name = "lab-vm-01"
            vb.customize ["modifyvm", :id, "--memory", "2048"]
            vb.customize ["modifyvm", :id, "--cpus", "2"] 
        end 
        
        vm01.vm.box = "ubuntu/jammy64"
        vm01.vm.network "public_network", ip: "192.168.100.51"
        vm01.vm.provision "shell",
            path: "scripts/server.sh"
        vm01.vm.synced_folder "ansible/", "/home/vagrant/ansible"
    end
end