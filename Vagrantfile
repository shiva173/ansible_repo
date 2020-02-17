VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

config.ssh.insert_key = false

config.vm.define "vagrant1" do |vagrant1|
  vagrant1.vm.box = "ubuntu/trusty64"
  vagrant1.vm.network "forwarded_port", guest: 80, host: 8000
  vagrant1.vm.network "forwarded_port", guest: 443, host: 8443
   end
 config.vm.define "vagrant2" do |vagrant2|
  vagrant2.vm.box = "bento/ubuntu-16.04"
#config.vm.provision :shell, path: "bootstrap.sh"
#settings for execure shell script
#config.vm.network "private_network", type: "dhcp"
#settings for network
  vagrant2.vm.network "forwarded_port", guest: 80, host: 8081
  vagrant2.vm.network "forwarded_port", guest: 443, host: 8444
  vagrant2.vm.network "forwarded_port", guest: 3306, host: 3366
 end
 config.vm.define "vagrant3" do |vagrant3|
  vagrant3.vm.box = "ubuntu/trusty64"
  vagrant3.vm.network "forwarded_port", guest: 80, host: 8082
  vagrant3.vm.network "forwarded_port", guest: 443, host: 8445
 end
end
