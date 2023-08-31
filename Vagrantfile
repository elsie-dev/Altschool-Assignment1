Vagrant.configure("2") do |config|
  # Master Node configuration
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/bionic64"
    master.vm.network "private_network", type: "dhcp"
    master.vm.provider "virtualbox" do |vb|
      vb.name = "master-node"
      vb.memory = 1024
    end
  end

  # Slave Node configuration
  config.vm.define "slave" do |slave|
    slave.vm.box = "ubuntu/bionic64"
    slave.vm.network "private_network", type: "dhcp"
    slave.vm.provider "virtualbox" do |vb|
      vb.name = "slave-node"
      vb.memory = 1024
    end
  end
end

