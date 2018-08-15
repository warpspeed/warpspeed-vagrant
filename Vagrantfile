# WarpSpeed Vagrant Configuration.

# Visit http://warpspeed.io for complete information.
# (c) Turner Logic, LLC. Distributed under the GNU GPL v2.0.

hostname = "warpspeed-dev-bionic64"
ip       = "192.168.88.10"

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "bento/ubuntu-18.04"
    config.vm.hostname = hostname
    config.vm.network :private_network, ip: ip

    # Use this config if you have nfs support (OSX or Linux).
    # Note: You will be required to enter your host root password during "vagrant up".
    config.vm.synced_folder "~/Sites", "/home/vagrant/sites",
        :nfs => true,
        :mount_options => ['actimeo=2']

    config.vm.provider "virtualbox" do |vb|
        vb.name = hostname
        vb.memory = 2048
        vb.cpus = 1
        vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
        vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    # Edit the s.args below to determine what installers are called during provisioning.
    config.vm.provision "shell" do |s|
        s.path = "provision.sh"
        s.args = "-h=#{hostname} --nginx --php --python --nodejs --rbenv --beanstalkd --mysql --postgresql --mongodb"
    end

end
