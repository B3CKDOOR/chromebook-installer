cd ../
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
wget -O java8-default.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-set-default_8u131-1~webupd8~2_all.deb
wget -O java8-installer.deb https://debian.opennms.org/dists/opennms-25/main/binary-all/oracle-java8-installer_8u131-1~webupd8~2_all.deb
wget https://launcher.technicpack.net/launcher4/611/TechnicLauncher.jar
wget -O visualstudiocode.deb https://az764295.vo.msecnd.net/stable/622cb03f7e070a9670c94bae1a45d78d7181fbd4/code_1.53.2-1613044664_amd64.deb
dpkg --add-architecture i386
sudo su
cd ~
add-apt-repository ppa:videolan/master-daily ppa:dawidd0811/neofetch
apt update
apt upgrade -y
apt autoremove
echo debconf shared/accepted-oracle-license-v1-1 select true | \
debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
debconf-set-selections
apt install -y wget gdebi-core libgl1-mesa-glx:i386 vlc qtwayland5 build-essential nano neofetch
exit
cp neofetch.conf ~/.config/neofetch/config.conf
sudo su
gdebi -n discord.deb
gdebi -n steam.deb
gdebi -n java8-installer.deb
gdebi -n java8-default.deb
gdebi -n visualstudiocode.deb
echo #======================
echo #Installation Complete!
echo #======================
exit
