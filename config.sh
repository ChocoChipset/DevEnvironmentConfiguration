#!/bin/bash


#	== Variables ==

vim_config_file_location=~/.vimrc


#	=== Configuring Vim ===

echo "Configuring Vim\n"
rm $vim_config_file_location -f
cp  vim/.vimrc $vim_config_file_location
if [ -f $vim_config_file_location ];
then 
	echo "Success!"
else
	echo "Error!"
fi
