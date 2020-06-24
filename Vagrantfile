Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.10.100"
  config.hostsupdater.aliases = ["development.local"]

  # synced folder -- connection both ways
  # how to send code to your VM :) 
  # config.vm.synced_folder("path_to_original_folder_to_sync", "path_in_machine_to_create_synced_folder")
  config.vm.synced_folder("app", "/app")

  # running a shell provision
  config.vm.provision "shell", path: "environment/provision.sh"

end/
