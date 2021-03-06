#!/usr/bin/env bash

CHROME_VERSION="75.0.3770.80-1"
sudo apt-get install -y apt-transport-https
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee -a /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y 
sudo curl  -H 'Cache-Control: no-cache' -o /google-chrome-stable_${CHROME_VERSION}_amd64.deb http://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb 
sudo apt-get install  /google-chrome-stable_${CHROME_VERSION}_amd64.deb -y
