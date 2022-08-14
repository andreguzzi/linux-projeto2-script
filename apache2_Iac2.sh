#!/bin/bash

echo -e "Atualizando Server\n"

apt-get update
apt-get upgrade -y

echo -e "Fim da atualização\n" 

echo -e "Instalando Servidor Apache2\n"

apt-get install apache2 -y

echo -e "Fim da instalação do apache\n"

echo -e "Iniciando liberação de acesso no apache"

ufw allow "Apache Full"

echo -e "Fim da liberação de acesso\n"

echo "Instalando unzip\n"

apt-get install unzip -y

echo -e "Fim da instalação do unzip\n"


echo -e "Iniciando download da aplicação web\n"

cd /tmp

wget https://github.com/denilsonbonatti/linux-projeto2-iac/archive/refs/heads/main.zip

echo -e "Fim do download da aplicação web"

echo -e "Inicio de unzip\n"

unzip main.zip

echo -e "Fim do unzip\n"

cd linux-site-dio

echo -e "Inicio da copia de arquivos da aplicação no diretorio padrao apache\n"

cp -R *  /var/www/html/

echo -e "Fim da copia de arquivos da aplicação no diretorio padrao apache\n"