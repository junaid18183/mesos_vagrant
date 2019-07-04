 #Create the base-box from the vagrantfile `Vagrantfile_for_mesos-vagrant-1.14.3.box`

 vagrant package --output mesos-vagrant-1.14.3.box
 vagrant box add mesos-vagrant mesos-vagrant-1.14.3.box

  $ vagrant up

  $ vagrant ssh

  #Marathoon UI
  #eth1 IP is hard-coded as 192.168.33.10 in VagrantFile
  http://192.168.33.10:8080/ui/#/apps 

#mesos UI
http://192.168.33.10:5050/#/
