# -*- mode: ruby -*-
# vi: set ft=ruby :
# This script to install Kubernetes will get executed after we have provisioned the box
$script = <<-SCRIPT

systemctl restart docker
systemctl restart marathon

SCRIPT

Vagrant.configure(2) do |config|
  config.vm.box = "mesos-vagrant"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.hostname = "mesos"
  config.vm.provision "shell", inline: $script
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
     vb.cpus = "2"
   end
end
