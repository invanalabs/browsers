#!/usr/bin/env bash

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
# apt-get update -y
# apt-get install -y google-chrome-stable



CHROME_VERSION="74.0.3729.169-1"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee -a /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y && sudo apt-get -y install google-chrome-stable=$CHROME_VERSION
