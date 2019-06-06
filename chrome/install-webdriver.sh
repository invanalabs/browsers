#!/usr/bin/env bash

CHROME_DRIVER_VERSION=75.0.3770.8
echo "Using chromedriver version: "$CHROME_DRIVER_VERSION \
&& wget --no-verbose -O /tmp/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip \
&& rm -rf /opt/selenium/chromedriver \
&& unzip /tmp/chromedriver_linux64.zip -d /opt/selenium \
&& rm /tmp/chromedriver_linux64.zip \
&& mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
&& chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
&& sudo ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver
