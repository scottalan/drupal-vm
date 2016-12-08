#!/bin/bash

NVM_VERSION=v0.32.0
NODE_VERSION=v4.4.0

cd $HOME

#apt-get update

#apt-get install build-essential libssl-dev

curl https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash

export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.bashrc

nvm install ${NODE_VERSION}
nvm use ${NODE_VERSION}

npm install -g grunt
npm install -g gulp

npm rebuild node-sass


#echo ''
#echo 'Adding bash files for vagrant user'
#echo '----------'
#
#if [ ! -e /home/vagrant/.bash_aliases ]; then
#  echo "--- Adding the .bash_aliases file"
#  cp /vagrant/provisioning/user/.bash_aliases /home/vagrant/ && chmod 775 /home/vagrant/.bash_aliases
#  chown vagrant:vagrant /home/vagrant/.bash_aliases
#else
#  echo "The .bash_aliases file already exists"
#fi
#
#if [ ! -e /home/vagrant/.bash_profile ]; then
#  echo "--- Adding the .bash_profile file"
#  cp /vagrant/provisioning/user/.bash_profile /home/vagrant/ && chmod 775 /home/vagrant/.bash_profile
#  chown vagrant:vagrant /home/vagrant/.bash_profile
#else
#  echo "The .bash_profile file already exists"
#fi
#
#if [ ! -e /home/vagrant/.git-completion.sh ]; then
#  echo "Adding the .git-completion.sh file"
#  cp /vagrant/provisioning/user/.git-completion.sh /home/vagrant/ && chmod 775 /home/vagrant/.git-completion.sh
#  chown vagrant:vagrant /home/vagrant/.git-completion.sh
#else
#  echo "The .git_completion file already exists"
#fi
#
#if [ ! -e /home/vagrant/.git_prompt ]; then
#  echo "Adding the .git_prompt file"
#  cp /vagrant/provisioning/user/.git_prompt /home/vagrant/ && chmod 775 /home/vagrant/.git_prompt
#  chown vagrant:vagrant /home/vagrant/.git_prompt
#else
#  echo "The .git_prompt file already exists"
#fi
#
#if [ ! -e /home/vagrant/.gitconfig ]; then
#  echo "Adding the .gitconfig file"
#  cp /vagrant/provisioning/user/.gitconfig /home/vagrant/ && chmod 775 /home/vagrant/.gitconfig
#  chown vagrant:vagrant /home/vagrant/.gitconfig
#else
#  echo "The .gitconfig file already exists"
#fi
#
#if [ -e /home/vagrant/.profile ]; then
#  echo "source ~/.profile" >> /home/vagrant/.bash_profile
#fi

### RUBY ###
#RUBY=2.1.1
#SSL_DIR=$HOME/.rvm/usr
#
#cd $HOME
#
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#
#\curl -sSL https://get.rvm.io | bash -s stable
#
#source $HOME/.rvm/scripts/rvm
#
## Get latest RVM.
#rvm get head
#
## Install openssl.
## Due to an error:
### make[2]: *** [ossl_ssl.o] Error 1
### make[2]: Leaving directory `/home/vagrant/.rvm/src/ruby-2.1.1/ext/openssl'
#rvm pkg install openssl
#
## Install ruby version.
#rvm install ${RUBY} --with-openssl-dir=${SSL_DIR}
