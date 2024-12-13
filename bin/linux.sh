#!/bin/bash
#checking to see if this is the linux OS
if (( uname == "Linux")); then
	echo "Using Linux operating system" >> linuxsetup.log
else 
	echo " Not using Linux operating system....exiting" >> linuxsetup.log
	exit 0
fi	
#Making .TRASH directory in home directory
mkdir -p ~/.TRASH
#Looking for .nanorc file in home directory
if test -f "~/.nanorc"; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "The .nanorc file was changed to .bup_nanorc" >> linuxsetup.log
fi
#redirecting contents of etc/nanorc to home directory .nanorc
echo ~/.dotfiles/etc/nanorc >> ~/.nanorc
#adding statement
echo 'source ~/.dotfile/etc/bashrc_custom' >> ~/.bashrc

