#! /bin/bash

#Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable

#Snapcraft
sudo apt update
sudo apt install snapd
sudo snap install brave
sudo snap install tradingview
sudo snap install electronplayer
sudo snap install vlc
sudo snap install keepassxc
sudo snap install spotify
sudo snap install youtube-dl
sudo snap install gydl
sudo snap install inkscape
sudo snap install pinta
sudo snap install instagraph
sudo snap install snap-store
sudo snap install vectr
sudo snap install gifcurry
sudo snap install pencilsheep
sudo snap install boxy-svg
sudo snap install nextcloud
sudo snap install google-docs
sudo snap install newton
sudo snap install thunderbird

#Tahoma & Microsoft Fonts
sudo apt-get install ttf-mscorefonts-installer
wget https://gist.githubusercontent.com/maxwelleite/913b6775e4e408daa904566eb375b090/raw/ttf-ms-tahoma-installer.sh -q -O - | sudo bash

#Figma
sudo snap install figma-linux --edge
curl -L https://tinyurl.com/rx4xsyh4 | bash

#Nvidia Drivers
apt-get --purge remove xserver-xorg-video-nouveau
ubuntu-drivers devices
ubuntu-drivers autoinstall

#Tor Browser
sudo apt install -y torbrowser-launcher
torbrowser-launcher

#Non Essential Software

#Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys DFA175A75104960E
sudo apt install software-properties-common 
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 
sudo apt-add-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./'
sudo apt install --install-recommends winehq-stable
winecfg

sudo apt-get install winetricks
sudo apt-get install playonlinux

#Anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
apt update
apt install anydesk

#Monitor Calibration
sudo apt install kgamma5 kde-cli-tools
kcmshell5 kgamma

#Gammy monitor adjust
sudo apt install build-essential libgl1-mesa-dev libxxf86vm-dev libxext-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
git clone https://github.com/Fushko/gammy.git
cd gammy
qmake
make
sudo make install


#Elementary OS TWEAKS

#Tweaks
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks
sudo apt install -y pantheon-tweaks

# System Tray
sudo apt install software-properties-common
sudo add-apt-repository ppa:yunnxx/elementary
sudo apt update
sudo apt install indicator-application wingpanel-indicator-ayatana
cd /etc/xdg/autostart/
sudo nano indicator-application.desktop
