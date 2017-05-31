#!/bin/bash
cd ~/raspberry-status
git pull origin master

./details.sh
./display-details.sh
