#!/bin/bash
# Instala as dependências do Node.js usando npm
sudo apt update

sudo apt upgrade -y

sudo apt install npm -y

sudo apt install npm -y

sudo npm install -g pm2

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

pm2 start /home/jovyan/work/index.js --name app-8001 --watch -- 8001
pm2 start /home/jovyan/work/index.js --name app-8002 --watch -- 8002
pm2 start /home/jovyan/work/index.js --name app-8003 --watch -- 8003
pm2 start /home/jovyan/work/index.js --name app-8004 --watch -- 8004
pm2 start /home/jovyan/work/index.js --name app-8005 --watch -- 8005
pm2 start /home/jovyan/work/index.js --name app-8006 --watch -- 8006

