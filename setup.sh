#!/bin/bash
# Instala as dependências do Node.js usando npm
sudo apt update

sudo apt upgrade -y

sudo apt install npm -y

npm install --prefix /home/jovyan/work

node /home/jovyan/work/index.js
