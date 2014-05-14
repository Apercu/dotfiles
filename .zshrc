# ============================================================================ #
#                                                                              #
# ---------                           .zshrc                           ------- #
#                                                                          1.0 #
# ============================================================================ #

ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="meri"
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"

plugins=(git)

export PATH=/usr/local/bin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/opt/X11/bin
export PATH=$PATH:/usr/local/git/bin
export PATH=$PATH:/usr/local/heroku/bin

export PATH=$PATH:~/bin
export PATH=$PATH:~/.gem/bin
export PATH=$PATH:~/.rvm/bin
export PATH=$PATH:~/local/bin
export PATH=$PATH:~/.brew/bin
export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:~/.node/bin
export PATH=$PATH:~/.mongo/bin
export PATH=$PATH:~/.gem/ruby/2.0.0

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
