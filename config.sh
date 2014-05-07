#!/bin/bash

#	== Variables ==

vim_config_file_location=~/.vimrc


## Git

echo "Configuring Git...\n"


git config --global user.email "hecktorzr@gmail.com"
git config --global user.name "Hector Zarate"
git config --global push.default simple
git config --global color.ui true

echo "\tSuccess!\n"

#	=== Configuring Vim ===

echo "Configuring Vim...\n"
cp  vim/.vimrc $vim_config_file_location
if [ -f $vim_config_file_location ];
then
	echo "\tSuccess!"
else
	echo "\tError!"
fi

