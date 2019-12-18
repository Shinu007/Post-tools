#!/usr/bin/env bash

if [[ $EUID -ne 0 ]]; then
  #statements
  echo "This Script Should be run as root User"
  exit 1
fi
apt update
apt upgrade -y
apt update --fix-missing
apt upgrade -y
apt install figlet -y
apt install docker.io -y
apt install python3 -y
apt install python3-pip -y
alias python=python3
pip3 install jupyter django
#snap install spotify -y
apt install wireshark -y
apt install qbittorrent -y
apt install chromium-browser -y
apt install atom -y
apt install neovim -y

if [[ $snap -ne 0 ]]; then
  #statements
  apt install snap -y
fi


if [[ $wget -ne 0 ]]; then
  #statements
  apt install wget -y
fi
sudo apt install openjdk-11-jdk -y
sudo apt install openjdk-8-jdk -y
  figlet "Your system will reboot in "
  hour=0
  min=0
  sec=10
          while [ $hour -ge 0 ]; do
                   while [ $min -ge 0 ]; do
                           while [ $sec -ge 0 ]; do
                                   echo -ne "$hour:$min:$sec \r"
                                   let "sec=sec-1"
                                   sleep 1
                           done
                           sec=59
                           let "min=min-1"
                   done
                   min=59
                   let "hour=hour-1"
           done
           reboot
