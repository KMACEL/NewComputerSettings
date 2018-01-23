#! /bin/bash

echo "<--- Update --->"
sudo apt-get update

echo "<--- Upgrade --->"
sudo apt-get upgrade -y

echo "Install Gedit Editor"
sudo apt-get install gedit -y

echo "Instal Vim Editor"
sudo apt-get install vim -y

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
echo export GOROOT=\$HOME/go >> ~/.profile
echo export PATH=\$PATH:\$GOROOT/bin >> ~/.profile
sudo su
echo export PATH=\$PATH:/usr/local/go/bin >> /etc/profile
exit

echo "Golang - KMACEL IITR Download"
go get -u github.com/KMACEL/IITR

echo "Install ORACLE JAVA 8"
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer


