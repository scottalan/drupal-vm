#!/bin/bash

set -e

SELENIUM="2.45"

if [ -e /vagrant/provisioning/selenium/.installed ]; then
  echo 'Already installed.'

else
  echo ''
  echo 'INSTALLING'
  echo '----------'

  # Install Java, Firefox, Xvfb, and unzip
  apt-get -y install openjdk-7-jre-headless firefox xvfb unzip

  wget "https://selenium-release.storage.googleapis.com/${SELENIUM}/selenium-server-standalone-${SELENIUM}.0.jar" -O selenium-server-${SELENIUM}.jar
  cp selenium-server-${SELENIUM}.jar /usr/local/bin

  # So that running `vagrant provision` doesn't redownload everything
  touch /vagrant/provisioning/selenium/.installed
fi

# Release old locks
echo "Releasing old XVFB locks from /tmp..."
cd /tmp
sudo rm -rf .X*-lock

echo "Starting Selenium Server. Default screen resolution: 1280x1024."
cd /usr/local/bin
DISPLAY=:1 xvfb-run --server-args="-screen 0 1280x1024x8" java -jar ./selenium-server-${SELENIUM}.jar &

echo "Give Selenium Server a few minutes to fireup, then run your BDD tests."
