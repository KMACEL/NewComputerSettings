#! /bin/bash

# For Build Android 4.4.4 OS
# Download Java 6 in Oracle Binary File 
# http://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase6-419409.html
# Install Java6
chmod a+x jdk-6u45-linux-x64.bin
./jdk-6u45-linux-x64.bin
mv jdk1.6.0_30 /usr/lib/jvm/java-6-oracle
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/webupd8/update-java-0.5b
chmod +x update-java-0.5b
sudo ./update-java-0.5b

# Install Make Version 3.81
wget http://mirrors.kernel.org/ubuntu/pool/main/m/make-dfsg/make_3.81-8.2ubuntu3_amd64.deb
sudo dpkg -i make_3.81-8.2ubuntu3_amd64.deb

