# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "howl"

  config.vm.synced_folder "~/", "/ssh-keys"
  config.vm.synced_folder "c:\\Projects\\ahs", "/home/vagrant/ahs"

  config.vm.provision "shell", path: "provision.sh"
end
