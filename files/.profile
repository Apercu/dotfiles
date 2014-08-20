# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                          1.0 #
# ============================================================================ #

export PS1=$'%{\e[0;37m%}%n@%m%{\e[0;33m%} %{\e[0;32m%}[%?]%{\e[0;33m%} %1~ %{\e[0m%}%{\e[0;35m%}$%{\e[0;0m%} '
export MAIL42='mpillet@student.42.fr'
export USER42='mpillet'
export DEFAULT_USER="meriadec"

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

alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'
alias unscaffold='git config --local user.name meriadec && git config --local user.email meriadec.pillet@gmail.com && git commit --amend --author "meriadec <meriadec.pillet@gmail.com>" && git config --local --unset user.email && git config --local --unset user.name'

if [[ `uname` == 'Linux' ]]; then
  alias pbcopy='xsel --clipboard --input'
fi

# Youtube stream on mpv

function ytstream() {
  mpv -cookies -cookies-file /tmp/ytcookie.txt $(youtube-dl -g --cookies=/tmp/ytcookie.txt "$1")
}

alias yt=ytstream
