# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                          1.0 #
# ============================================================================ #

export PS1=$'%{\e[0;37m%}%n@%m%{\e[0;33m%} %{\e[0;32m%}[%?]%{\e[0;33m%} %1~ %{\e[0m%}%{\e[0;35m%}$%{\e[0;0m%} '
export MAIL42='mpillet@student.42.fr'
export USER42='mpillet'
export DEFAULT_USER="meriadec"
export GEM_HOME=~/.gem

alias prof='vim ~/.profile'
alias sprof='source ~/.profile'

alias lt='ls -lt'
alias llink='ls -l `find . -maxdepth 1 -type l -print`'

alias gits='git status'
alias gitf='git flow'
alias gitp='git push'
alias gitc='git commit'
alias gg='cd ~/git'
alias dl='cd ~/Downloads'

alias removestore="find . -name '*.DS_Store' -type f -delete"
alias run_storyplayr_webapp='mkdir /tmp/cache;grunt server --env=dev'

if [[ `uname` == 'Linux' ]]; then
  alias pbcopy='xsel --clipboard --input'
fi
