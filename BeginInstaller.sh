#! /bin/bash

echo "<--- Update --->"
sudo apt-get update

echo "<--- Upgrade --->"
sudo apt-get upgrade -y

echo "Install Gedit Editor"
sudo apt-get install gedit -y

echo "Instal Vim Editor"
sudo apt-get install vim -y

echo "Install Nano Editor"
sudo apt-get install nano -y

echo "Install Kolour Paint"
sudo apt-get install kolourpaint4 -y

echo "Install Gimp"
sudo apt-get install gimp -y

echo "Install SSH Client"
sudo apt-get install openssh-client -y

echo "Install SSH Server"
sudo apt install openssh-server -y

echo "Start SSH Service"
sudo service ssh start

echo "Install GIT"
sudo apt-get install git -y

echo "Instakk GITK"
sudo apt-get install gitk -y

echo "Install Repo"
sudo apt-get install repo -y

echo "Download ATOM"
wget  https://atom.io/download/deb atom-amd64.deb -O  atom-amd64.deb

echo "Install ATOM"
sudo dpkg -i atom-amd64.deb

echo "Download GOLANG"
wget  https://dl.google.com/go/go1.9.3.linux-amd64.tar.gz

echo "Install GOLANG"
mkdir ~/go
mkdir ~/go/pkg
mkdir ~/go/src
mkdir ~/go/bin
sudo tar -C /usr/local -xzf go1.9.3.linux-amd64.tar.gz
echo "#GOLANG Settings" >> ~/.profile
echo export GOPATH=\$HOME/go >> ~/.profile
echo export PATH=\$PATH:\$GOPATH/bin >> ~/.profile
sudo su
echo export PATH=\$PATH:/usr/local/go/bin >> /etc/profile
exit

echo "Golang - KMACEL IITR Download"
go get -u github.com/KMACEL/IITR

echo "Install ORACLE JAVA 8"
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer

echo "Install Open JDK 8"
sudo apt-get install openjdk-8-jdk -y

echo "Install Maven"
sudo apt-get install maven -y

echo "Install SDKMAN"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "Install GRADLE 4.1"
sdk install gradle 4.1

echo "Install System Settings"
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y
sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip
-y

echo "Install Screen"
sudo apt-get install screen -y

echo "Open VPN"
wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg|apt-key add -
echo "deb http://build.openvpn.net/debian/openvpn/stable xenial main" > /etc/apt/sources.list.d/openvpn-aptrepo.list
sudo apt-get install openvpn -y

echo "Install WPS"
wget http://kdl1.cache.wps.com/ksodl/download/linux/a21//wps-office_10.1.0.5707~a21_amd64.deb
sudo dpkg -i wps-office*.deb

# If Keyboard Language isn't Turkish
# sudo dpkg-reconfigure keyboard-configuration
