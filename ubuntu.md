
# Introduction

After sometime, after each time I installed Ubuntu in a new computer, I need to remember wich programs to install and how.

Bellow is a list of programs that I usually use at work and home.

Ubuntu Configurations


Program installation

## Snap

Page: [snap](https://docs.snapcraft.io/core/install-ubuntu)

```
sudo apt update
sudo apt install snapd
sudo apt install pulseaudio
sudo apt install snapd-xdg-open
```

## gdebi

```
sudo apt-get install gdebi
```

## Chrome

Page: [How to install Google Chrome](https://askubuntu.com/questions/510056/how-to-install-google-chrome)

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable
```

## Vivaldi

Page: [https://vivaldi.com/](https://vivaldi.com/)

Download the .deb file
```
gdebi vivaldi-stable_1.12.955.38-1_amd64.deb
```

## Opera

Page: (opera)[http://www.opera.com]

Download link (Opera version 48)[http://download1.operacdn.com/pub/opera/desktop/48.0.2685.50/linux/opera-stable_48.0.2685.50_amd64.deb]



## Keepass

```
sudo snap install keepassxc
```

## Atom

```
sudo snap install atom --classic
```

## Brackets

```
sudo snap install brackets --classic
```

## Libre Office

When libreoffice is already installed with apt, than remove it first.
```
sudo apt remove --purge libreoffice*
sudo snap install libreoffice
```

## Shutter
Page: [Install The Latest Shutter Screenshot Tool in Ubuntu](http://tipsonubuntu.com/2015/04/13/install-the-latest-shutter-screenshot-tool-in-ubuntu)

```
sudo apt-get install shutter
```

## VLC

```
sudo snap install vlc
```

## SDKMAN

see the sdkman.md file


## Eclipse

Eclipse depends on the installation from java, use sdkman to install java and other java developer environments.

Page: [Download](https://www.eclipse.org/downloads/)

http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz

Extract the eclipse-inst-linux64.tar.gz file

Run the install

```
cd ~/Downloads/eclipse-inst-linux64/eclipse-installer
./eclipse-inst
```

### Create an Eclipse application launcher 

Page: [How to Install The Latest Eclipse in Ubuntu](http://ubuntuhandbook.org/index.php/2016/01/how-to-install-the-latest-eclipse-in-ubuntu-16-04-15-10/)

```
cd ~ 
gedit .local/share/applications/eclipse.desktop
```

paste below content:

```
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=<Eclipser-path>/eclipse
Terminal=false
Icon=<Eclipser-path>/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
```


## Git

### Git console

```
sudo apt install git
```


### gitkraken

The best git tool to manage git branches is gitkraken

Page: [Download the linux version  ](https://release.gitkraken.com/linux/gitkraken-amd64.deb))
```
cd /tmp
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb && sudo gdebi gitkraken-amd64.deb
```


