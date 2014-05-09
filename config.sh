#!/bin/bash

#	== Variables ==

vim_config_file_location=~/.vimrc
xcode_themes_directory=~/Library/Developer/Xcode/UserData/FontAndColorThemes

## Git

echo "Configuring Git...\n"


git config --global user.email "hecktorzr@gmail.com"
git config --global user.name "Hector Zarate"
git config --global push.default simple
git config --global color.ui true

echo "\tSuccess!\n"

#	=== Configuring Terminal===

echo "Configuring Terminal..."
cp terminal/.bashrc ~/
source ~/.bash_profile
echo "\tSuccess!"



#	=== Configuring Vim ===

echo "Configuring Vim...\n"
cp  vim/.vimrc $vim_config_file_location

if [ -f $vim_config_file_location ];
then
	echo "\tSuccess!"
else
	echo "\tError!"
fi

#	=== Configuring Xcode Theme ===

echo "Configuring Xcode Theme...\n"

mkdir $xcode_themes_directory
cp xcode/Solarized-Dark.dvtcolortheme $xcode_themes_directory
chmod +x $xcode_themes_directory/Solarized-Dark.dvtcolortheme

if [ -f $xcode_themes_directory/Solarized-Dark.dvtcolortheme ];
then
echo "\tSuccess!"
else
echo "\tError!"
fi
