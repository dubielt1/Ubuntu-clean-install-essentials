System
  sudo apt-get install build-essential
  sudo apt-get install p7zip
  sudo apt-get install nautilus-open-terminal
  vmWare: https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0
    http://askubuntu.com/questions/459817/how-to-install-vmware
  sudo apt-get install eclipse
  sudo apt-get install curl
  sudo apt-get install vim
  
Latest version of gcc https://launchpad.net/~ubuntu-toolchain-r/+archive/ubuntu/test
  sudo add-apt-repository ppa:ubuntu-toolchain-r/test
  sudo apt-get update
  sudo apt-get install g++-4.9 [5.0 has been released]
  [now to update the symlink of gcc from previous version to new version]
  sudo rm /usr/bin/gcc
  sudo rm /usr/bin/g++
  sudo ln -s /usr/bin/gcc-4.9 /usr/bin/gcc
  sudo ln -s /usr/bin/g++-4.9 /usr/bin/g++
  [test with gcc --version]
  
  [To add gcc 4.9s new diagnostic coloring]
    echo "export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'" >> ~/.bashrc
    source ~/.bashrc
  
Java Oracle - http://www.webupd8.org/2012/09/install-oracle-java-8-in-ubuntu-via-ppa.html
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  sudo apt-get install oracle-java8-installer [soon to be java 9]
  
Googles golang
  sudo apt-get install golang
  echo "export GOPATH=$HOME/Code/go" >> ~/.bashrc
  echo "export PATH=$PATH:$HOME/Code/go/bin:/usr/local/go/bin" >> ~/.bashrc
  source ~/.bashrc [reads environment variables into current session]
  

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
