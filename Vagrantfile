# -*- mode: ruby -*-
# vi: set ft=ruby :



Vagrant.configure("2") do |config|

# Configurando a VM
  config.vm.define:desafio do |desafio_config|
    desafio_config.vm.box = "debian/buster64"
    desafio_config.vm.network "public_network", ip: "192.168.1.10", bridge: "wlp18s0"
    desafio_config.vm.provider:virtualbox do |v|
      v.memory = 2048
      v.cpus = 1
      
    end

    config.vm.provision :shell, path: "script.sh"
  end
end
