#!/usr/bin/env bash

RUBY=2.1.1
SSL_DIR=$HOME/.rvm/usr

cd $HOME

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

source $HOME/.rvm/scripts/rvm

# Get latest RVM.
rvm get head

# Install openssl.
# Due to an error:
## make[2]: *** [ossl_ssl.o] Error 1
## make[2]: Leaving directory `/home/vagrant/.rvm/src/ruby-2.1.1/ext/openssl'
rvm pkg install openssl

# Install ruby version.
rvm install ${RUBY} --with-openssl-dir=${SSL_DIR}

#
