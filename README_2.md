#### Virtual Machines and creating standardised environments

### Before you begin:

- Ensure that you are running the most stable version of Ruby. The latest version may still have bugs or missing files. This can be easily found by looking at the link to download the software IN BOLD with some sort of indication next to it (a --> or some other pointer)

- Before you run the tests on your provision and vagrant file, ensure that the syntax used is operating system appropriate (before apt- commands on Linux or Mac, use 'sudo' - you do not use this command on Windows machines or tests will fail - but on virtual machines within windows, you NEED TO USE SUDO).

- Ensure nginx is initialised before starting these tests. 

- nginx will also need to be initiliased before creating your vm

#### Begin

- Go to starrt menu, type bundle/bundler - if it is not there, type in cmd, in the cmd window type 'gem install bundler'

- create a new project folder in your user profile

- if vagrant is installed, either click 'file' and 'open cmd as administrator'

- or right click and 'open git bash here'

- in gitbash, type 'vagrant status'

- if no machine, you can create a provision file with a text editor (sublime/notepad/atom)

- copy this code into the provision file:
````
sudo apt-get update -y

sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

npm install pm2 -g

# nvm use 6

service nginx start
````

- save the file

in your vagranfile (open with a text editor)

- it should appear like this: 
````
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

end
````

- Once all the above conditions are met, in your gitbash terminal, type 'vagrant up' and enter

- After some time, your vm will be created

- now in the terminal cd into 'cd environment', 'cd spec-tests' then type 'rake spec'

- tests will now begin and results of the pre requisite test will generate automatically.

