cd ../
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
wget -O java8-default.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-set-default_8u131-1~webupd8~2_all.deb
wget -O java8-installer.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-installer_8u131-1~webupd8~2_all.deb
sudo dpkg --add-architecture i386
sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt install -y wget gdebi-core libgl1-mesa-glx:i386
sudo dpkg -i discord.deb
sudo gdebi ~/steam.deb
sudo apt install nano
sudo dpkg -i java8-default.deb
sudo dpkg -i java8-installer.deb
