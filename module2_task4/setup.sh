#!/bin/bash
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb
rm hugo.deb
