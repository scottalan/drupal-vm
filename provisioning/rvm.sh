#!/bin/bash

set -e

RUBY_VERSION="2.1.7"

echo ''
echo 'Installing RVM'
echo '----------'

cd /home/vagrant

if [ ! -d /home/vagrant/.rvm ]; then
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s stable
  source /home/vagrant/.rvm/scripts/rvm
  rvm install ${RUBY_VERSION}
  # This changes to MRI Ruby 2.1.1 and sets it as your default.
  rvm --default use ${RUBY_VERSION}
else
  echo "RVM should already be installed, found .rvm directory in /home/vagrant"
fi
