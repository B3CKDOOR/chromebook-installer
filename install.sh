cd ../
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
wget -O java8-default.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-set-default_8u131-1~webupd8~2_all.deb
wget -O java8-installer.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-installer_8u131-1~webupd8~2_all.deb
wget https://launcher.technicpack.net/launcher4/611/TechnicLauncher.jar
wget -O visualstudiocode.deb https://az764295.vo.msecnd.net/stable/622cb03f7e070a9670c94bae1a45d78d7181fbd4/code_1.53.2-1613044664_amd64.deb
sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:videolan/master-daily ppa:dawidd0811/neofetch
sudo apt update
sudo apt upgrade -y
sudo apt autoremove
echo debconf shared/accepted-oracle-license-v1-1 select true | \
sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
sudo debconf-set-selections
sudo apt install -y wget gdebi-core libgl1-mesa-glx:i386 vlc qtwayland5 build-essential nano neofetch
sudo gdebi -n discord.deb
sudo gdebi -n steam.deb
sudo gdebi -n java8-installer.deb
sudo gdebi -n java8-default.deb
sudo gdebi -n visualstudiocode.deb
echo #======================
echo #Installation Complete!
echo #======================
