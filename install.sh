#!/bin/sh

# Since I don't wanna use Puppet I'm gonna be oldschool and script it.

# apt installation
sudo apt-get install emacs i3 i3blocks virtualbox vagrant python3-pip zsh unity-greeter-badges git

# Python Stuff
pip3 --user install nltk jedi rope py3k importmagic autopep8 yapf flake8

#TODO
# Install elpy for emacs
# Get and install cloudstation.deb
# git clone stuff (purcell, config)

mkdir ~/github

git clone https://github.com/purcell/emacs.d ~/.emacs.d
git clone https://github.com/martialblog/config ~/github/config

# Syslinks
