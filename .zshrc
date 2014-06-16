# ============================================================================ #
#                                                                              #
# ---------                           .zshrc                           ------- #
#                                                                          1.0 #
# ============================================================================ #

ZSH=$HOME/.oh-my-zsh

CASE_SENSITIVE="true"

plugins=(git)

export PATH=$HOME/bin
export PATH=$PATH:$HOME/.gem/bin
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/.brew/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$PATH:$HOME/.node/bin
export PATH=$PATH:$HOME/.mongo/bin
export PATH=$PATH:$HOME/.gem/ruby/2.0.0
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/bin
export PATH=$PATH:/sbin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/opt/X11/bin
export PATH=$PATH:/usr/local/git/bin
export PATH=$PATH:/usr/local/heroku/bin

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
