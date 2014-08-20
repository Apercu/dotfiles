#!/bin/bash

timestamp=$(date +"_%Y-%m-%d_%T" | sed 's/://g')
folder=$(pwd)

function finish {
	printf "\n\033[35mYou are all done !\033[0m\n\n"
	exit
}

function do_backup {
	mv "$1" "$1$timestamp"
	printf "    Backuped \033[35m%s\033[0m\n" "$1$timestamp"
}

function do_install {
	printf "\033[32m> Installing \033[34m%s \033[32m\033[0m...\n" "$1"
	if [ -e ~/"$1" ]
	then
		do_backup ~/"$1"
	fi
	cd ~
	/bin/ln -s "$folder/files/$1" "."
	printf "    Installed \033[35m%s\033[0m !\n" "$1"
	cd "$folder"
}

printf "\n\033[32m        >>\033[34m- - - - - - - - - - - - - - - - - -\033[32m<<\033[0m\n"
printf "\n\033[32m        >>\033[34m   Welcome to perfect dotfiles !   \033[32m<<\033[0m\n"
printf "\n\033[32m        >>\033[34m- - - - - - - - - - - - - - - - - -\033[32m<<\033[0m\n\n"

PS3='Make your choice : '
options=("INSTALL COMMONS" "CLEAN BACKUPS" ".gitconfig" ".gitignore_global" ".gitprompt" ".profile" ".tigrc" ".vimrc" ".zshrc" ".Xdefaults" "Quit")
select opt in "${options[@]}"
do
	case $opt in
		"INSTALL COMMONS")
			do_install '.gitconfig'
			do_install '.gitignore_global'
			do_install '.gitprompt'
			do_install '.profile'
			do_install '.tigrc'
			do_install '.vimrc'
			do_install '.zshrc'
			do_install '.Xdefaults'
			finish
			;;
		"CLEAN BACKUPS")
			/bin/rm -f ~/.gitconfig_*
			/bin/rm -f ~/.gitignore_global_*
			/bin/rm -f ~/.gitprompt_*
			/bin/rm -f ~/.profile_*
			/bin/rm -f ~/.tigrc_*
			/bin/rm -f ~/.vimrc_*
			/bin/rm -f ~/.zshrc_*
			printf "\033[32m> Finished clean up\033[0m\n"
			finish
			;;
		".gitconfig")
			do_install '.gitconfig'
			finish
			;;
		".gitignore_global")
			do_install '.gitignore_global'
			finish
			;;
		".gitprompt")
			do_install '.gitprompt'
			finish
			;;
		".profile")
			do_install '.profile'
			finish
			;;
		".tigrc")
			do_install '.tigrc'
			finish
			;;
		".vimrc")
			do_install '.vimrc'
			;;
		".zshrc")
			do_install '.zshrc'
			;;
		".Xdefaults")
			do_install '.Xdefaults'
			;;
		"Quit")
			printf "\n\033[32m Bye.\033[0m\n\n"
			break
			;;
		*) echo invalid option;;
	esac
done
