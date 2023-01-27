#! /bin/bash

#Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt update
sudo apt install google-chrome-stable

#Snapcraft
sudo apt update
sudo apt install snapd
sudo snap install tradingview
sudo snap install electronplayer
sudo snap install skype
sudo snap install brave
sudo snap install vlc
sudo snap install openresizer
sudo snap install keepassxc
sudo snap install spotify
sudo snap install youtube-dl
sudo snap install gydl
sudo snap install inkscape
sudo snap install sweethome3d-homedesign
sudo snap install blender --classic
sudo snap install pinta
sudo snap install instagraph
sudo snap install snap-store
sudo snap install figma-linux
sudo snap install goxel
sudo snap install freecad
sudo snap install pixelorama
sudo snap install titania
sudo snap install vectr
sudo snap install gifcurry
sudo snap install pencilsheep
sudo snap install boxy-svg
sudo snap install nextcloud
sudo snap install google-docs
sudo snap install newton
sudo snap install thunderbird
sudo snap install mailspring

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

#Elementary OS TWEAKS

#Tweaks
sudo apt install software-properties-common
sudo add-apt-repository ppa:philip.scott/elementary-tweaks && sudo apt-get update
sudo apt install elementary-tweaks

# System Tray
sudo apt install software-properties-common
sudo add-apt-repository ppa:yunnxx/elementary
sudo apt update
sudo apt install indicator-application wingpanel-indicator-ayatana
cd /etc/xdg/autostart/
sudo nano indicator-application.desktop
