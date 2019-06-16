#!/usr/bin/env bash

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
# apt-get update -y
# apt-get install -y google-chrome-stable



export=CHROME_VERSION="75.0.3770.80-1"
sudo apt-get install -y apt-transport-https
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee -a /etc/apt/sources.list.d/google-chrome.list
#sudo apt-get update -y && sudo apt-get -y install google-chrome-stable=$CHROME_VERSION
sudo apt-get update -y 
#sudo wget  http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_$CHROME_VERSION_amd64.deb -y
sudo curl  -H 'Cache-Control: no-cache' -o /google-chrome-stable_$CHROME_VERSION_amd64.deb http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_$CHROME_VERSION_amd64.deb 
sudo dpkg -i /google-chrome-stable_$CHROME_VERSION_amd64.deb
