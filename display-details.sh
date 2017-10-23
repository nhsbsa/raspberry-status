#!/bin/sh
xset s off
xset -dpms
xset s noblank

#chromium-browser --start-fullscreen output.html
chromium-browser --start-fullscreen --restore-last-session
