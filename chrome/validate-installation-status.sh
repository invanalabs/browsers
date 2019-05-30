#!/usr/bin/env bash
# this script will pause starting the invana-bot till the selenium is up
# /validate-installation-status.sh

until $(curl --output /dev/null --silent --head --fail http://127.0.0.1:4444/); do
    printf '.'
    sleep 1
done
