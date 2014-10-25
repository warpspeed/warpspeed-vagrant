# WarpSpeed Vagrant Configuration.

# Visit http://warpspeed.io for complete information.
# (c) Turner Logic, LLC. Distributed under the GNU GPL v2.0.

hostname = "warpspeed-dev"
ip       = "192.168.88.10"

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = hostname
    config.vm.network :private_network, ip: ip
    config.vm.synced_folder "~/Sites", "/home/vagrant/sites", 
        owner: "vagrant",
        group: "vagrant",
        mount_options: ["dmode=775,fmode=664"]

    config.vm.provider "virtualbox" do |vb|
        vb.name = hostname
        vb.memory = 2048
        vb.cpus = 1
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.provision "shell" do |s|
        s.path = "provision.sh"
        s.args = "-h=#{hostname} --nginx --php --mysql --postgres"
    end

end
