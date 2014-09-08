# ============================================================================ #
#                                                                              #
# ---------                           .zshrc                           ------- #
#                                                                              #
# ============================================================================ #

ZSH=$HOME/.oh-my-zsh

# -- Env {
# ======

  export EDITOR="/usr/bin/vim"
  export BROWSER="/usr/bin/chromium"
  export GOPATH="$HOME/go"
  export GEM_HOME=~/.gem
  export LANG=en_US.UTF-8

# }


# -- Commons options {
# ==================

  CASE_SENSITIVE="true"
  plugins=(git)

# }


# -- Path {
# =======

  export PATH=$HOME/bin
  export PATH=$PATH:$HOME/.gem/bin
  export PATH=$PATH:$HOME/.rvm/bin
  export PATH=$PATH:$HOME/local/bin
  export PATH=$PATH:$HOME/.brew/bin
  export PATH=$PATH:$HOME/.cabal/bin
  export PATH=$PATH:$HOME/.node/bin
  export PATH=$PATH:$HOME/.mongo/bin
  export PATH=$PATH:$HOME/.gem/ruby/2.1.0/bin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/bin
  export PATH=$PATH:/sbin
  export PATH=$PATH:/usr/bin
  export PATH=$PATH:/usr/sbin
  export PATH=$PATH:/opt/X11/bin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/usr/bin/core_perl
  export PATH=$PATH:/usr/local/git/bin
  export PATH=$PATH:/usr/local/heroku/bin
  export PATH=$PATH:$GOPATH/bin

# }


# -- Sugar {
# ========

  source $ZSH/oh-my-zsh.sh
  source $HOME/.profile
  source $HOME/.gitprompt
  source $HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# }
