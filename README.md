# raspberry-status
Status board bootstrap for raspberry devices

# Initial setup
## Creating the Operating System
### Formatting an SD Card
Format a SD card using a tool as recommended here:
https://www.raspberrypi.org/documentation/installation/sdxc_formatting.md

No additional special options need to be selected - like boot markers.

### Download an Operating System
1. Get the latest version of NOOBS - not NOOBS lite
https://www.raspberrypi.org/downloads/noobs/

2. Unzip to your workstation first.
3. Copy the contents onto the root of the formatted SD card. You'll have folders such as "OS" on the root.
4. Eject the SD card safely before pulling it out of the workstation.

## Booting the Raspberry
1. Insert the SD card fully into the Raspberry.
2. Connect the monitor, keyboard and mouse before inserting and turning on the power.

## Configure the Raspberry
1. Clone this repository in a new a terminal:
```git clone https://github.com/nhsbsa/raspberry-status.git```
2. cd raspberry-status
3. 
3. sudo ./install-raspberry.sh
4. reboot

## Configure Chromium
1. Add Revolver extension
2. Add specific tabs pages to Chrome startup. Settings --> On start-up

## End of day shutdown
To prevent the raspberry from overuse, ensure it shuts down periodically when not in use.
1. Edit crontab
```sudo crontab -e```
2. Schedule nightly shutdowns
```0 17 * * * /sbin/shutdown -h now```
