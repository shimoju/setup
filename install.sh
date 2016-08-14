#!/bin/sh

git clone https://github.com/shimoju/setup.git ~/setup
cd ~/setup

sudo gem install bundler --no-document
bundle install --path vendor/bundle
