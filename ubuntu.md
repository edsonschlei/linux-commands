
# Introduction

After sometime, after each time I installed Ubuntu in a new computer, I need to remember wich programs to install and how.

Bellow is a list of programs that I usually use at work and home.

# Ubuntu Configurations

## Guake configuration for ubuntu 17.10

* Open the Start program, and add guake to the list.
* Open Configurations do gnome, Keyboard, add a special f12 key map with the following line:

```
guake -t
```
## trim SSD

```
cd /etc/cron.daily
sudo nano trim
# copy the script bellow and save
sudo chmod +x trim
```
```
#!/bin/sh
LOG=/var/log/trim.log
echo "*** $(date -R) ***" >> $LOG
fstrim -v / >> $LOG
fstrim -v /home >> $LOG
```


## git

https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

```
$ git config --global user.name "Edson Elmar Schlei"
$ git config --global user.email edson.schlei@gmail.com
```

# Program installation

## Snap

### installing snapd

Page: [snap](https://docs.snapcraft.io/core/install-ubuntu)

```
#sudo apt update
#sudo apt install snapd
#sudo apt install pulseaudio
#sudo apt install snapd-xdg-open
```

### Removing snap

Snap is using to much resources, then i decided to remove it.

remove pgae: [Thread: how to remove snappy or snapd](https://ubuntuforums.org/showthread.php?t=2328152)

```
sudo apt purge snapd ubuntu-core-launcher squashfs-tools
```

## gdebi

Anwendungspakete installieren und betrachten

```
sudo apt install gdebi
```

## Guake

```
sudo apt install guake
```

## Chrome

Page: [How to install Google Chrome](https://askubuntu.com/questions/510056/how-to-install-google-chrome)

```
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo apt-get install chrome-gnome-shell
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
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update && sudo apt install keepassxc
```

## Atom

```
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update && sudo apt-get install atom
```

## Brackets

```
sudo add-apt-repository ppa:webupd8team/brackets
sudo apt update && sudo apt install brackets
```

## Libre Office

page: [LibreOffice](https://wiki.ubuntu.com/LibreOffice)

### using stable version

```
sudo apt install libreoffice
```

### using a RC versions
```
sudo apt remove --purge libreoffice*
sudo apt-get install python-software-properties
sudo apt-add-repository ppa:libreoffice/ppa
sudo apt update
sudo apt install -y libreoffice
```

See the page, to install additional libreoffice packages.

```
# installing the german packages
sudo apt install -y libreoffice-help-de
```


## Shutter
Page: [Install The Latest Shutter Screenshot Tool in Ubuntu](http://tipsonubuntu.com/2015/04/13/install-the-latest-shutter-screenshot-tool-in-ubuntu)

```
sudo apt install -y shutter
```

## VLC

```
sudo apt install -y vlc
```

## gnome-tweak-tool

```
sudo apt install -y gnome-tweak-tool
```

## Virtual box

```
sudo apt install -y virtualbox
```

## SDKMAN

see the [sdkman.md](sdkman.md) file

## Java 8

page: [Ubuntu Java 8](http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html)
```
sudo add-apt-repository ppa:webupd8team/java
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get update && sudo apt-get install -y oracle-java8-installer
sudo apt install -y oracle-java8-set-default
```

### set as default Java
```
sudo apt install -y oracle-java8-set-default
```



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

## install media codecs

```
sudo apt install ubuntu-restricted-extras
```

## Calibre

```
sudo apt-get install calibre
```

## Prolong your battery and prevent overheating

```
sudo apt install tlp tlp-rdw
sudo tlp start
```
