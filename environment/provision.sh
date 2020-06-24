sudo apt-get update -y

sudo apt-get install nginx -y
curl -sL https://deb.nodesource.com/setup_6.x | sudo bash -
sudo apt-get install -y nodejs

npm install pm2 -g

# nvm use 6

service nginx start

