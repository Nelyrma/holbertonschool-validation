#!/bin/bash

# inqtall a good version of hugo
apt-get update && apt-get install -y make wget
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.tar.gz
tar -xvf hugo_extended_0.109.0_Linux-64bit.tar.gz hugo
mv hugo /usr/local/bin/
rm hugo_extended_0.109.0_Linux-64bit.tar.gz

# Install markdownlint and zip tools
apt-get install zip -y
npm install -g markdownlint-cli -y

#generate go-hugo website
make build
