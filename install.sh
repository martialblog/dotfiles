#!/bin/sh
# Since I don't wanna use Puppet I'm gonna be oldschool and script it.

# apt installation
sudo apt-get install emacs i3 i3blocks virtualbox vagrant python3-pip zsh unity-greeter-badges git xclip

# Python Stuff
pip3 --user install nltk jedi rope py3k importmagic autopep8 yapf flake8

# github
mkdir ~/github
git clone https://github.com/purcell/emacs.d ~/.emacs.d
git clone https://github.com/martialblog/config ~/github/config

# oh my zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Get cloudstation.deb
# TODO: Dynamic link?
wget -P /home/markus/Downloads/ https://global.download.synology.com/download/Tools/CloudStationDrive/3.2-3501/Ubuntu/Installer/x86_64/synology-cloud-station-3501.x86_64.deb

# Syslinks
# Why the f cant I remember this?
#ln -s {/path/to/file-name} {link-name}
ln -s /home/markus/github/config/aliases ~/.aliases
ln -s /home/markus/github/config/xmodmap ~/.xmodmap
ln -s /home/markus/github/config/i3.d/ ~/.i3
