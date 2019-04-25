Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
  end

  config.vm.box = "bento/centos-7.6"

  config.vm.provision "shell", path: "bootstrap.sh"
end
