
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

or

```
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
sudo apt install vivaldi-stable
```

## Opera

Page: (opera)[http://www.opera.com]

Download link (Opera version 48)[http://download1.operacdn.com/pub/opera/desktop/48.0.2685.50/linux/opera-stable_48.0.2685.50_amd64.deb]



## KeepassXC

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

## spotify

page: [Spotify for Linux](https://www.spotify.com/lu-fr/download/linux/)

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
```

## extra video and audio codes

```
sudo apt update
sudo apt install libdvdnav4 libdvdread4 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg
sudo apt install ubuntu-restricted-extras
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


## Flameshot
Page: [Flameshot](https://wiki.ubuntuusers.de/Flameshot/)

```
sudo apt install -y flameshot
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

### Avoid the use java from Oracle, prefer to use the open or zulu version, use sdkman to install it.

### Instal the default Java for the SO

```
sudo apt install -y default-jdk
```

## Eclipse

Eclipse depends on the installation from java, use sdkman to install java and other java developer environments.

Page: [Download](https://www.eclipse.org/downloads/)

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

## Pencil

(Pencil Download)[http://pencil.evolus.vn/Downloads.html]


## fonts inconsolata

```
sudo apt-get install fonts-inconsolata
```

## Google clound tools

[Installing with apt-get (Debian and Ubuntu only)](https://cloud.google.com/sdk/docs/downloads-apt-get)

```
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update 
sudo apt-get install google-cloud-sdk
sudo apt-get install google-cloud-sdk-app-engine-java
sudo apt-get install google-cloud-sdk-app-engine-python
sudo apt-get install google-cloud-sdk-app-engine-python-extras
sudo apt-get install google-cloud-sdk-app-engine-java
sudo apt-get install google-cloud-sdk-app-engine-go
sudo apt-get install google-cloud-sdk-datalab
sudo apt-get install google-cloud-sdk-datastore-emulator
sudo apt-get install google-cloud-sdk-pubsub-emulator
sudo apt-get install google-cloud-sdk-cbt
sudo apt-get install google-cloud-sdk-cloud-build-local
sudo apt-get install google-cloud-sdk-bigtable-emulator
sudo apt-get install kubectl
```

## Visual Studio code

```
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install -y code

```

## Diffuse

```
sudo apt-get install diffuse
```

## SAMBA Tools

```
sudo apt-get install cifs-utils keyutils 
```

## Signal

```
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
```

## Android Tools

The Tools to install the new lineage version on your android phone.

[Android Tools](http://www.bernaerts-nicolas.fr/linux/74-ubuntu/354-ubuntu-xenial-android-adb-fastboot-qtadb)

```
sudo apt-get install android-tools-adb android-tools-fastboot
```
