# Ubuntu-clean-install-essentials
(personal use)

Headache free set up for development environments on a personal ubuntu machine

System
  sudo apt-get install build-essential
  sudo apt-get install p7zip
  sudo apt-get install nautilus-open-terminal
  vmWare: https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0
    http://askubuntu.com/questions/459817/how-to-install-vmware
  sudo apt-get install eclipse
  sudo apt-get install curl
  sudo apt-get install vim

nodejs/npm/bower/grunt-cli/yo/generator-angular/generator-karma  https://github.com/yeoman/generator-angular
  curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install -y nodejs
  sudo npm install -g bower grunt-cli yo generator-karma generator-angular

Python/django/pip/easy_install
  sudo apt-get install python-setuptools
  easy_install django
  
ruby/rbenv/rails/MySql https://gorails.com/setup/ubuntu/14.04 requires nodejs
  sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev        sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
  
  git clone git://github.com/sstephenson/rbenv.git .rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  exec $SHELL

  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
  exec $SHELL

  git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

  rbenv install 2.2.2 [recent version here]
  rbenv global 2.2.2

  echo "gem: --no-ri --no-rdoc" > ~/.gemrc
  gem install bundler
  gem install rails -v 4.2.1
  rbenv rehash
  
  sudo apt-get install mysql-server mysql-client libmysqlclient-dev
