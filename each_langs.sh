#!/bin/sh

npm install

pip install -r requirements.txt

gem install bundler
bundle install
