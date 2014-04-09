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

export PATH=/usr/local/heroku/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/opt/X11/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/sbin:$PATH
export PATH=/bin:$PATH

export PATH=~/.gem/ruby/2.0.0:$PATH
export PATH=~/.node/bin:$PATH
export PATH=~/.rvm/bin:$PATH
export PATH=~/.brew/bin:$PATH
export PATH=~/bin:$PATH

source $ZSH/oh-my-zsh.sh
source $HOME/.profile
source $HOME/.gitprompt
