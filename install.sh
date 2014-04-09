#!/bin/bash

function do_install {
	printf "\033[32mInstalling $1 ...\033[0m\n"
	if [ -f ~/$1 ]
	then
		echo the file exists
	fi
}

PS3='Make your choice : '
options=("install all files" ".gitconfig" ".gitignore_global" ".gitprompt" ".profile" ".tigrc" ".vimrc" ".zshrc" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"install all files")
			do_install '.gitconfig'
			do_install '.gitignore_global'
			do_install '.gitprompt'
			do_install '.profile'
			do_install '.tigrc'
			do_install '.vimrc'
			do_install '.zshrc'
			do_install '.zshrcuu'
			break;
			;;
		".gitconfig")
			do_install '.gitconfig'
			;;
		".gitignore_global")
			do_install '.gitignore_global'
			;;
		".gitprompt")
			do_install '.gitprompt'
			;;
		".profile")
			do_install '.profile'
			;;
		".tigrc")
			do_install '.tigrc'
			;;
		".vimrc")
			do_install '.vimrc'
			;;
		".zshrc")
			do_install '.zshrc'
			;;
		"Quit")
			break
			;;
		*) echo invalid option;;
	esac
done
