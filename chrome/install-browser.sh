#!/usr/bin/env bash

CHROME_VERSION="google-chrome-stable"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && apt-get update -qqy \
  && apt-get -qqy install \
${CHROME_VERSION:-google-chrome-stable}


# # Set up the Chrome PPA
# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list

# # Update the package list and install chrome
# apt-get update -y
# apt-get install -y google-chrome-stable
