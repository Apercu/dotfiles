# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                          1.0 #
# ============================================================================ #

chmod 000 ~/Library/Caches/Google/Chrome/Default/Media\ Cache
chmod 000 ~/Library/Caches/Google/Chrome/Default/Cache
chmod 000 ~/Library/Caches/com.google.Software

export PS1=$'%{\e[0;35m%}%m %{\e[0;33m%}%~ %{\e[0m%}'
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
