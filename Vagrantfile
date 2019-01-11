# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "mesos"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
  end
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
     vb.cpus = "2"
   end
end
