Vagrant.configure("2") do |config|
  # Enable hostmanager plugin
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true

  # Define VM1
  config.vm.define "VM1" do |vm1|
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.hostname = "VM1"
    vm1.vm.network "private_network", ip: "192.168.56.10"
    vm1.vm.network "public_network"
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "500"
    end
  end

  # Define VM2
  config.vm.define "VM2" do |vm2|
    vm2.vm.box = "ubuntu/focal64"
    vm2.vm.hostname = "VM2"
    vm2.vm.network "private_network", ip: "192.168.56.11"
    vm2.vm.network "public_network"
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "500"
    end
  end

  # Define hostmanager configurations
  config.hostmanager.include_offline = true
end
