#!/bin/bash

set -e

echo ''
echo 'Installing node and npm'
echo '----------'

# Install node if not already installed.
if [ ! -e /home/vagrant/.npmrc ]; then
  if [ ! -d /home/vagrant/.local ]; then
    mkdir /home/vagrant/.local
  fi
  echo "root =    $HOME/.local/lib/node_modules" \
       "binroot = $HOME/.local/bin" \
       "manroot = $HOME/.local/share/man" > /home/vagrant/.npmrc

  cd /home/vagrant
  curl -O https://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz
  tar -xzf node-v0.12.0.tar.gz
  cd node-v0.12.0
  ./configure --prefix=$HOME/.local && make && make install

  # Add node and npm to our $PATH
  echo "export PATH=$HOME/.local/bin:$PATH" >> /home/vagrant/.bash_profile

  source /home/vagrant/.bash_profile

  # Upgrade npm
  npm install -g npm

else
  echo "Node and NPM are already installed"
fi
