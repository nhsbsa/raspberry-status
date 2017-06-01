#!/bin/sh
currentdir=$(pwd)
autostart=/home/pi/.config/lxsession/LXDE-pi/autostart
sudo echo "@lxterminal --command /home/pi/raspberry-status/bootstrap.sh" >> $autostart

# Prevent screen from blanking out
sudo echo "@xset s off         # don't activate screensaver" >> $autostart
sudo echo "@xset -dpms         # disable DPMS (Energy Star) features." >> $autostart
sudo echo "@xset s noblank     # don't blank the video device" >> $autostart

sudo sed -i -e '/@xscreensaver -no-splash/c\\#@xscreensaver -no-splash' $autostart
