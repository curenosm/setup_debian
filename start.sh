#!/usr/bin/bash 

RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Welcome, this is a script prepared to install"
echo "several tools which you will use almost always."
echo -e "${RED}Did you executed sudo start.sh ?${NC}"
read -p "Do you want to start? [y/N]" answer

apt-get update && apt-get upgrade
apt-get install vim gnome_tweak_tool vscode \
	software-properties-common apt-transport-https wget \
	curl git-flow blueman

#################### Numix circle #######################

add-apt-repository ppa:numix/ppa
apt-get update
apt-get install numix-gtk-theme numix-icon-theme-circle

#################### Docker ############################

apt-get remove docker docker-engine docker.io
apt install docker.io
systemctl start docker
systemctl enable docker
groupadd docker
usermod -aG docker $USER
newgrp docker

###################### docker-compose ##################
sudo curl -L https://github.com/docker/compose/releases/download/1.25.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

#################### VSCode #############################

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update && apt install code


################## Global packages python3 ##############

apt-get update && apt-get install python3-pip
pip3 install virtualenv

