#!/usr/bin/zsh
#
# package installer

##############################
# anyenv
if [[ ! -e ~/.anyenv ]]; then
    git clone https://github.com/riywo/anyenv ~/.anyenv
fi

for env in ("rbenv" "ndenv" "pyenv" "phpenv"); do
    anyenv install $env
done

export PATH="$HOME/.anyenv/bin:$PATH"'
eval "$(anyenv init -)"'

if [[ ! -e $(anyenv root)/plugins/anyenv-update ]]; then
    mkdir -p $(anyenv root)/plugins
    git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
fi

##############################
# rbenv
rbenv install 2.1.1
rbenv local 2.1.1
gem install bundler
bundle install

##############################
# ndenv
ndenv install 0.10
ndenc local 0.10
npm install

##############################
# pyenv
pyenv install 3.3.4
pyenv local 3.3.4
pip install -r requirements.txt

##############################
# zaw
if [[ ! -e ~/opt ]]; then
    mkdir ~/opt
fi

cd opt

if [[ ! -e ~/opt/zaw ]]; then
    git clone git://github.com/zsh-users/zaw.git
fi

##############################
# clojurescript
if [[ ! -e ~/opt/clojurescript ]]; then
    git clone git://github.com/clojure/clojurescript.git
    cd clojurescript # important!
    ./script/bootstrap
fi

##############################
# cask
curl -fsSkL https://raw.github.com/cask/cask/master/go | python
cask upgrade
