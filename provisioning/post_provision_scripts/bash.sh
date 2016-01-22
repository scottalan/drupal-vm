#!/bin/bash

echo ''
echo 'Adding bash files for vagrant user'
echo '----------'

if [ ! -e /home/vagrant/.bash_aliases ]; then
  echo "--- Adding the .bash_aliases file"
  cp /vagrant/provisioning/user/.bash_aliases /home/vagrant/ && chmod 775 /home/vagrant/.bash_aliases
  chown vagrant:vagrant /home/vagrant/.bash_aliases
else
  echo "The .bash_aliases file already exists"
fi

if [ ! -e /home/vagrant/.bash_profile ]; then
  echo "--- Adding the .bash_profile file"
  cp /vagrant/provisioning/user/.bash_profile /home/vagrant/ && chmod 775 /home/vagrant/.bash_profile
  chown vagrant:vagrant /home/vagrant/.bash_profile
else
  echo "The .bash_profile file already exists"
fi

if [ ! -e /home/vagrant/.git-completion.sh ]; then
  echo "Adding the .git-completion.sh file"
  cp /vagrant/provisioning/user/.git-completion.sh /home/vagrant/ && chmod 775 /home/vagrant/.git-completion.sh
  chown vagrant:vagrant /home/vagrant/.git-completion.sh
else
  echo "The .git_completion file already exists"
fi

if [ ! -e /home/vagrant/.git_prompt ]; then
  echo "Adding the .git_prompt file"
  cp /vagrant/provisioning/user/.git_prompt /home/vagrant/ && chmod 775 /home/vagrant/.git_prompt
  chown vagrant:vagrant /home/vagrant/.git_prompt
else
  echo "The .git_prompt file already exists"
fi

if [ ! -e /home/vagrant/.gitconfig ]; then
  echo "Adding the .gitconfig file"
  cp /vagrant/provisioning/user/.gitconfig /home/vagrant/ && chmod 775 /home/vagrant/.gitconfig
  chown vagrant:vagrant /home/vagrant/.gitconfig
else
  echo "The .gitconfig file already exists"
fi

if [ -e /home/vagrant/.profile ]; then
  echo "source ~/.profile" >> /home/vagrant/.bash_profile
fi
