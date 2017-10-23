#!/bin/sh
# Configures raspberry

apt-get -qq -y remove minecraft-pi && 
apt-get -qq -y remove scratch &&
apt-get -qq -y remove wolfram-engine &&
apt-get -qq -y remove greenfoot &&
apt-get -qq -y remove bluej &&
apt-get -qq update &&
apt-get -qq -y upgrade &&
./install-timezone.sh && 
./install-autostart.sh
