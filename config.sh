#!/bin/bash

#	== Variables ==

vim_config_file_location=~/.vimrc


## Git

git config --global user.email "hecktorzr@gmail.com"
git config --global user.name "Hector Zarate"
git config --global push.default simple

#	=== Configuring Vim ===

echo "Configuring Vim...\n"
cp  vim/.vimrc $vim_config_file_location
if [ -f $vim_config_file_location ];
then
	echo "Success!"
else
	echo "Error!"
fi
