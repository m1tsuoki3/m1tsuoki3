#!/bin/bash

export INSTALL_VERSION="2.4.4"

git clone https://github.com/rbenv/rbenv.git /home/mitsuaki/.rbenv
git clone https://github.com/rbenv/ruby-build.git /home/mitsuaki/.rbenv/plugins/ruby-build
echo 'export PATH="/home/mitsuaki/.rbenv/bin:$PATH"' >> /home/mitsuaki/.bash_profile
echo 'eval "$(rbenv init -)"' >> /home/mitsuaki/.bash_profile

export PATH="/home/mitsuaki/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

rbenv install ${INSTALL_VERSION}
rbenv global ${INSTALL_VERSION}
rbenv rehash

gem install bundler

export INSTALL_VERSION="3.7.0"

git clone https://github.com/yyuu/pyenv.git /home/mitsuaki/.pyenv
echo 'export PATH="/home/mitsuaki/.pyenv/bin:$PATH"' >> /home/mitsuaki/.bash_profile
echo 'eval "$(pyenv init -)"' >> /home/mitsuaki/.bash_profile

export PATH="/home/mitsuaki/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

pyenv install ${INSTALL_VERSION}
pyenv global ${INSTALL_VERSION}


export INSTALL_VERSION="10.7.0"

git clone https://github.com/riywo/ndenv.git /home/mitsuaki/.ndenv
git clone https://github.com/riywo/node-build.git /home/mitsuaki/.ndenv/plugins/node-build
echo 'export PATH="/home/mitsuaki/.ndenv/bin:$PATH"' >> /home/mitsuaki/.bash_profile
echo 'eval "$(ndenv init -)"' >> /home/mitsuaki/.bash_profile

export PATH="/home/mitsuaki/.ndenv/bin:$PATH"
eval "$(ndenv init -)"

ndenv install ${INSTALL_VERSION}
ndenv global ${INSTALL_VERSION}

echo "export PATH=\"\$PATH:/home/mitsuaki/.ndenv/versions/${INSTALL_VERSION}/bin/\"" >> /home/mitsuaki/.bash_profile

export INSTALL_VERSION="1.10.3"
export HOME=/home/mitsuaki

git clone https://github.com/syndbg/goenv.git /home/mitsuaki/.goenv
echo 'export PATH="/home/mitsuaki/.goenv/bin:$PATH"' >> /home/mitsuaki/.bash_profile
echo 'eval "$(goenv init -)"' >> /home/mitsuaki/.bash_profile
export PATH="/home/mitsuaki/.goenv/bin:$PATH"
eval "$(goenv init -)"

goenv install ${INSTALL_VERSION}
goenv global ${INSTALL_VERSION}

go get -u github.com/golang/dep/cmd/dep

echo 'export GOPATH="/home/mitsuaki/go"' >> /home/mitsuaki/.bash_profile
echo 'export PATH="$PATH:/home/mitsuaki/go/bin"' >> /home/mitsuaki/.bash_profile

