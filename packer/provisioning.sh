#!/bin/bash

cp -R /tmp/SymmetricKeyProvisioning /home/vm-admin
chmod +x /tmp/prov_vm.sh
cp /tmp/prov_vm.sh /etc/init.d/prov_vm.sh

sudo apt-get update
sudo apt install -y curl
sudo apt install -y wget

# install xrdp
sudo apt-get -y install xfce4
sudo apt-get -y install xrdp
sudo systemctl enable xrdp
echo xfce4-session >~/.xsession
sudo service xrdp restart

# install Iot Edge runtime
curl https://packages.microsoft.com/config/ubuntu/18.04/multiarch/prod.list > ./microsoft-prod.list
sudo cp ./microsoft-prod.list /etc/apt/sources.list.d/
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo cp ./microsoft.gpg /etc/apt/trusted.gpg.d/
sudo apt-get update
sudo apt-get install -y moby-engine
sudo apt-get install -y moby-cli
apt list -a iotedge
sudo apt-get install -y iotedge
sudo systemctl restart iotedge

# install dotnet sdk und runtime
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1

sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-runtime-3.1





