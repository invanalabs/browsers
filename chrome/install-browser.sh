#!/usr/bin/env bash

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
# apt-get update -y
# apt-get install -y google-chrome-stable


CHROME_VERSION="google-chrome-stable"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -y \
  && apt-get -y install ${CHROME_VERSION:-google-chrome-stable}
