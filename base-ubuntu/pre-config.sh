#!/bin/bash

## localVars
### Colors
Red='\033[0;31m'
Green='\033[0;32m'
Orange='\033[0;33m'

NoColor='\033[0m'

echo -e "## ${Red}Removendo${NoColor} travas eventuais do apt ##"
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo ""
echo -e "## ${Orange} Atualizando${NoColor} os repositórios ##"

sudo apt update && 

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo ""
echo -e "## ${Orange}Instalando${NoColor} pacotes e programas do repositório deb do Ubuntu ##"

sudo apt install python3 \
                 python-pip
                 docker \
                 docker-compose \
                 git \
                 build-essential \
                 libssl-dev \
                 flatpak \
                 gnome-software-plugin-flatpak \
                 openjdk-11-jdk \
                 openjdk-8-jdk \
                 nano \
                 zsh \
                 curl \
                 maven \
                 ttf-mscorefonts-installer -y &&

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo ""
echo -e "## ${Orange}Instalando${NoColor} pacotes Snap ##"

sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install node --classic && 
sudo snap install spotify &&
sudo snap install intellij-idea-community --classic && 
sudo snap install postman &&
sudo snap install dbeaver-ce &&

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes Snap ##"
echo ""
echo -e "## ${Orange}Instalando${NoColor} pacotes e programas NPM ##"

npm install --global yarn @angular/cli

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes Snap ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas NPM ##"
echo ""
echo -e "## ${Orange}Instalando${NoColor} softwares que precisam de download externo ##"

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb && 

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes Snap ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas NPM ##"
echo -e "## ${Green}✔ Instalado${NoColor} softwares que precisam de download externo ##"
echo ""
echo -e "## ${Orange}Instalando${NoColor} softwares GIMP e PhotoGIMP ##"

flatpak install flathub org.gimp.GIMP -y && wget -c https://doc-0s-1g-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/0v83rmt4mij9897co9ufvor2r1jcj1am/1567965600000/07452089978596344616/*/12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && unzip 12i-ihCDSZelx30-oNHJaKAzUei1etsbS?e=download && cd "PHOTOGIMP V2018 - DIOLINUX" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ &&

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes Snap ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas NPM ##"
echo -e "## ${Green}✔ Instalado${NoColor} softwares que precisam de download externo ##"
echo -e "## ${Green}✔ Instalado${NoColor} softwares GIMP e PhotoGIMP ##"
echo ""
echo -e "## ${Orange}Atualizando${NoColor} e limpando o sistema ##"

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

clear &&

echo -e "## ${Green}✔ Removido${NoColor} travas eventuais do apt ##"
echo -e "## ${Green}✔ Atualizado${NoColor} os repositórios ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas do repositório deb do Ubuntu ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes Snap ##"
echo -e "## ${Green}✔ Instalado${NoColor} pacotes e programas NPM ##"
echo -e "## ${Green}✔ Instalado${NoColor} softwares que precisam de download externo ##"
echo -e "## ${Green}✔ Instalado${NoColor} softwares GIMP e PhotoGIMP ##"
echo -e "## ${Green}✔ Atualizado${NoColor} e limpo o sistema ##"
echo ""
echo ""
echo ""
echo -e "${Green}✔ Finalizado ✔"
