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

  export EDITOR="/usr/bin/vim"
  export GEM_HOME="~/.gem"
  export LANG=en_US.UTF-8

  export NVM_DIR="/home/meri/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

  # Linux specifics
  if [[ `uname` == 'Linux' ]]; then

    export CHROME_BIN="/bin/google-chrome-stable"
    export BROWSER="/bin/google-chrome-stable"
    export ANDROID_HOME="/opt/android-sdk"

  fi

# }


# -- Commons options {
# ==================

  CASE_SENSITIVE="true"
  plugins=(git)

# }


# -- Path {
# =======

  export PATH=$HOME/bin
  export PATH=$PATH:$HOME/go/bin
  export PATH=$PATH:$HOME/.brew/bin
  export PATH=$PATH:$HOME/.node/bin
  export PATH=$PATH:$HOME/.gem/ruby/2.1.0/bin
  export PATH=$PATH:/opt/android-sdk/tools
  export PATH=$PATH:$HOME/.brew/Cellar/node/0.10.36/bin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/bin
  export PATH=$PATH:/sbin
  export PATH=$PATH:/usr/bin
  export PATH=$PATH:/usr/sbin
  export PATH=$PATH:/opt/X11/bin
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/opt/android-sdk/platform-tools

  if [[ `uname` == 'Linux' ]]; then

    export PATH=$PATH:$HOME/Webstorm10/bin

  fi

# }


# -- Sugar {
# ========

  source $ZSH/oh-my-zsh.sh
  source $HOME/.profile
  source $HOME/.gitprompt
  source $HOME/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# }

# -- Fix oh-my-zsh {
# ================

  export GREP_OPTIONS=""

# }
