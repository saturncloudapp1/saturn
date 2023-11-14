#!/bin/bash
# Instala as dependências do Node.js usando npm
sudo apt update

sudo apt upgrade -y

sudo apt install npm -y

npm install --prefix /home/jovyan/work
#Nginx install
sudo apt-get update

# Instalar o Nginx
sudo apt-get install -y nginx

sudo ln -s /home/jovyan/work/nginx.conf /etc/nginx/sites-enabled

#NESTAT NET-TOOLS
sudo apt install net-tools -y

# Iniciar o serviço Nginx
sudo service nginx start

sudo service nginx status

#memoria ram
free -h

sudo netstat -tuln | grep nginx

node /home/jovyan/work/index.js &

sleep 2

node /home/jovyan/work/index2.js
