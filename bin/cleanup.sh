#!/bin/bash
#removing .nanorc from directory
rm ~/.nanorc
#Remove the last line added to the .bashrc file
sed -i 's:source ~/.dotfiles/etc/bashrc_custom: :g' ~/.bashrc
#remove TRASH directory
rm -r ~/.TRASH
