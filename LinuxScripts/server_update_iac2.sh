#!/bin/bash

echo "Atualizando Servidor"
apt-get update
apt-get upgrade -y

echo " Instalando Aplicativos"
apt-get install apache2 -y
apt-get install unzip -y
 
echo "Baixando Aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/arqchive/refs/heads/main.zip
unzip main.zip
 
echo "Copiando arquivos"
cd linux-site-dio
cp -R * /var/www/html
