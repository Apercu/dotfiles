# ============================================================================ #
#                                                                              #
# ---------                           .zshrc                           ------- #
#                                                                              #
# ============================================================================ #

# -- Init {
# =======

  ZSH=$HOME/.oh-my-zsh

# }


# -- Env {
# ======

  export EDITOR="$(which vim)"
  export GEM_HOME="~/.gem"
  export LANG=en_US.UTF-8

  # Linux specifics
  if [[ `uname` == 'Linux' ]]; then

    export CHROME_BIN="/bin/google-chrome-stable"
    export BROWSER="/bin/google-chrome-stable"

  fi

# }


# -- Commons options {
# ==================

  CASE_SENSITIVE="true"
  plugins=(git)

# }


# -- Path {
# =======

  export PATH=$HOME/.brew/bin
  export PATH=$PATH:$HOME/.node/bin
  export PATH=$PATH:$HOME/.gem/ruby/2.1.0/bin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/bin
  export PATH=$PATH:/sbin
  export PATH=$PATH:/usr/bin
  export PATH=$PATH:/usr/sbin
  export PATH=$PATH:/opt/X11/bin

# }


# -- Sugar {
# ========

  source $ZSH/oh-my-zsh.sh
  source $HOME/.profile
  source $HOME/.gitprompt
  source $HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# }
