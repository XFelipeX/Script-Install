#!/bin/bash

## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

## Atualizando pacotes 
sudo apt update -y

## Programas do repositório
sudo apt-add-repository ppa:graphics-drivers/ppa -y

sudo apt install mint-meta-codecs -y

## Pasta de download
#mkdir $HOME/Downloads/programas
#cd $HOME/Downloads/programas

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

## Visual Studio Code
wget -c https://az764295.vo.msecnd.net/stable/2b9aebd5354a3629c3aba0a5f5df49f43d6689f8/code_1.54.3-1615806378_amd64.deb -P "$DIRETORIO_DOWNLOADS"

## MySQL Workbench
wget -c https://cdn.mysql.com//Downloads/MySQLGUITools/mysql-workbench-community_8.0.23-1ubuntu20.10_amd64.deb -P "$DIRETORIO_DOWNLOADS"

## Google Chrome
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P "$DIRETORIO_DOWNLOADS"

## Microsoft Edge
wget -c https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-dev/microsoft-edge-dev_91.0.825.0-1_amd64.deb -P "$DIRETORIO_DOWNLOADS"

## Spring tools
wget -c https://download.springsource.com/release/STS4/4.10.0.RELEASE/dist/e4.19/spring-tool-suite-4-4.10.0.RELEASE-e4.19.0-linux.gtk.x86_64.tar.gz -P "$DIRETORIO_DOWNLOADS"

## Eclipse
wget -c https://eclipse.c3sl.ufpr.br/oomph/epp/2021-03/R/eclipse-inst-jre-linux64.tar.gz -P "$DIRETORIO_DOWNLOADS"

## Netbeans
wget -c https://downloads.apache.org/netbeans/netbeans/12.0/Apache-NetBeans-12.0-bin-linux-x64.sh -P "$DIRETORIO_DOWNLOADS"

## Xampp
wget -c https://downloadsapachefriends.global.ssl.fastly.net/7.3.27/xampp-linux-x64-7.3.27-1-installer.run?from_af=true -P "$DIRETORIO_DOWNLOADS"

sudo dpkg -i *.deb -y

## Programas do snapd
sudo rm /etc/apt/preferences.d/nosnap.pref

sudo apt update -y

sudo apt install snapd

#sudo snap install spotify

#sudo snap install discord

## Finalização, atualização e limpeza
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y

echo "Download concluído!"









