#!/bin/bash

clear

echo -e "Actualizando paquetes por defecto\n"
pkg upgrade -y
 
echo -e "Solicitando permiso de almacenamiento\n"
termux-setup-storage
sleep 5

echo -e "Creando el folder Downloads/TermuxDownloads\n"
mkdir ~/storage/downloads/TermuxDownloads
 
echo -e "Instalando Python\n"
pkg install wget python python-pip ffmpeg --no-install-recommends

echo -e "Instalando yt-dlp\n"
pip install yt-dlp
 
echo -e "Creando el folder bin\n"
mkdir ~/bin
 
echo -e "Descargando e installando termux-url-opener\n"
wget "https://raw.githubusercontent.com/zahid1905/termux-simple-url-opener/main/termux-url-opener" -o ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener

echo -e "\n"
echo -e "\n"
echo -e "Los archivos descargados pueden ser encontrados en la carpeta Downloads\TermuxDownloads\n"
echo -e "\n"
