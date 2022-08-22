#!/bin/bash

echo "Criando servidor de Web..."
echo "Atualizando bibliotecas..."
	apt update -y
	apt upgrade -y
echo "Instalando Servidor Apache e Unzip"
	apt install apache2 -y
	apt install unzip -y
echo "Baixando arquivos de instalação"
	cd /tmp/
	wget https://github.com/GabrielSaints7/Projeto-Recriando-Layout-Netflix/archive/refs/heads/main.zip -v
	unzip main.zip
echo "Movendo e configurando Servidor Web"
	mv /tmp/Projeto-Recriando-Layout-Netflix/* /var/www/html/
echo "Iniciando e habilitando servidor apache"
	systemctl start apache2
	systemctl enable apache2

echo "As configurações foram criadas!"
