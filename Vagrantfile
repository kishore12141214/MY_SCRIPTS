Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "centos1" do |centos1|
    centos1.vm.box = "centos/6"
    centos1.vm.network "public_network"
  end

  config.vm.define "centos2" do |centos2|
    centos2.vm.box = "centos/6"
    centos2.vm.network "public_network"
  end

  config.vm.define "centos3" do |centos3|
   centos3.vm.box = "centos/6"

    centos3.vm.network "public_network"
end

  config.vm.define "centos4" do |centos4|
    centos4.vm.box = "centos/6"

    centos4.vm.network "public_network"
end
end

