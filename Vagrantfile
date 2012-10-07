# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "precise64-base-1"
  # config.vm.box_url = "http://domain.com/path/to/above.box"
  # config.vm.boot_mode = :gui

  config.vm.network :hostonly, "192.168.69.10"
  # config.vm.network :bridged

  # config.vm.forward_port 80, 8080

  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.options = ['--verbose']
  end

  # allow symlinks in vm
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
end
