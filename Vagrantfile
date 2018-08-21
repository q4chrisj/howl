# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder "C:\\Projects\\SSM-Parameters", "/home/vagrant/ssm-parameters", create:true
  config.vm.synced_folder "C:\\Projects\\DevOps-NginxConfiguration\\scripts", "/home/vagrant/nginx-scripts", create:true

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update

    sudo apt-get update
    sudo apt-get install awscli -y 
    sudo apt-get install python-pip -y
    pip install --upgrade awscli

    sudo apt-get install -y git
    sudo apt-get install -y rake
    sudo curl -L https://bit.ly/janus-bootstrap | bash
  SHELL
end
