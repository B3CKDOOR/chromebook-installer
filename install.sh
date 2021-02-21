cd ../
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
wget -O java8-default.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-set-default_8u131-1~webupd8~2_all.deb
wget -O java8-installer.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-installer_8u131-1~webupd8~2_all.deb
wget https://launcher.technicpack.net/launcher4/611/TechnicLauncher.jar
sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:videolan/master-daily
sudo apt update
sudo apt upgrade -y
sudo apt autoremove
echo debconf shared/accepted-oracle-license-v1-1 select true | \
sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
sudo debconf-set-selections
sudo apt install -y wget gdebi-core libgl1-mesa-glx:i386 vlc qtwayland5 build-essential
sudo gdebi -n discord.deb
sudo gdebi -n steam.deb
sudo gdebi -n java8-installer.deb
sudo gdebi -n java8-default.deb
sudo apt install nano
echo #======================
echo #Installation Complete!
echo #======================
