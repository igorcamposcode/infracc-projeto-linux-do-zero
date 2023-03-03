#!/bin/bash

echo "Executando operações"
echo "Instalando Atualizaçãos do sistema..."

apt-get update -y
apt-get upgrade -y

echo "Finalizando atualizações do sistema"
echo "Instalando apache2 e unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Finalizando instalações"
echo "Realizando configurações..."

cd /scripts/meus_scripts/

wget url https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd /sciprts/meus_scripts/linux-site-dio-main/
cp -R * /var/www/html

echo "Finalizando configurações"

