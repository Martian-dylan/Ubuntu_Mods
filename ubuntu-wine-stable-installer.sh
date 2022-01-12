#!/bin/bash
hostnamectl
echo "Ubuntu Wine Installer V1"
echo "Is you system 64-bit / x86-64 ? Y/N"
read system
if [ $system == Y ];
then
sudo dpkg --add-architecture i386 
fi
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
echo "Ubuntu Version?"
read version
if [ $version == 21.10 ];
then
echo "Great Installing Wine For Ubuntu 21.10"
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main'
elif [ $version == 21.04 ];
then
echo "Great Installing Wine For Ubuntu 21.04"
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main'
elif [ $version == 20.10 ];
then
echo "Great Installing Wine For Ubuntu 20.10"
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main'
elif [ $version == 20.04 ];
then
echo "Great Installing Wine For Ubuntu 20.04"
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
else
echo "Sorry we don't currently support your version $version of ubuntu"
echo "See: https://wiki.winehq.org/Ubuntu"
exit
fi
sudo apt update
sudo apt install --install-recommends winehq-stable



