# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                          1.0 #
# ============================================================================ #

if [ $(find ~ -name '.zcompdump-*' -maxdepth 1) ]
then
	rm -f ~/.zcompdump-*
fi

export PS1=$'%{\e[0;37m%}%n@%m%{\e[0;33m%} %{\e[0;32m%}[%?]%{\e[0;33m%} %~ %{\e[0m%}%{\e[0;35m%}$%{\e[0;0m%} '
export MAIL42='mpillet@student.42.fr'
export USER42='mpillet'

alias prof='vim ~/.profile'
alias sprof='source ~/.profile'

alias lt='ls -lt'

alias gits='git status'
alias gitf='git flow'
alias gitp='git push'
alias gg='cd ~/git'
alias dl='cd ~/Downloads'

alias removestore="find . -name '*.DS_Store' -type f -delete"

export PATH=$PATH:~/phalcon-tools
export PTOOLSPATH=~/phalcon-tools
export GEM_HOME=~/.gem
