#!/bin/bash
ip=$(ifconfig wlan0 | grep "inet addr" | awk '{print $2}' | sed -e 's/addr://')
currenttime=date

outputhtml=output.html

echo "<html><head><title>PPC Raspberry</title></head>" > $outputhtml
echo "<body>" >> $outputhtml
echo "<p>Started: $currenttime</p>" >> $outputhtml
echo "<p>IP Address: $ip</p>" >> $outputhtml
echo "</body></html>" >> $outputhtml

echo "Done"
