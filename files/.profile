# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                              #
# ============================================================================ #

# -- Prompt {
# =========

  export PS1=$'%{\e[0;32m%}%n%{\e[0;0m%}|%{\e[0;31m%}%m%{\e[0;33m%} %{\e[0m%}%{\e[0;37m%}%?%{\e[0m%}%{\e[0;33m%} %1~ %{\e[0m%}%{\e[0;34m%}$%{\e[0;0m%} '

# }


# -- User centred values {
# ======================

  export ZAVATTA='192.99.2.67'
  export MJ_APIKEY_PUBLIC='03764601c1aee5f2320714cb59d0317a'
  export MJ_APIKEY_PRIVATE='ee59d3fcd8a9d75ee6f544ae2ac4b604'

# }


# -- Aliases {
# ==========

  # Let .profile manage .profile
  alias prof='vim ~/.profile && sprof'
  alias sprof='source ~/.profile'

  alias vim=nvim

  # `ls` thoughts
  alias lt='ls -lt'

  # Folders
  alias gg='cd ~/git'
  alias dl='cd ~/Downloads'
  alias dot='cd ~/git/dotfiles'

  # Git
  alias gits='git status'
  alias gitp='git push'
  alias gitc='git commit'
  alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'
  alias unscaffold='git config --local user.name meriadec && git config --local user.email meriadec.pillet@gmail.com && git commit --amend --author "meriadec <meriadec.pillet@gmail.com>" && git config --local --unset user.email && git config --local --unset user.name'

  # Random
  pastebin () {
    curl --data "api_dev_key=$PASTEBIN_API_KEY&api_option=paste&api_paste_code=$1" http://pastebin.com/api/api_post.php && echo ''
  }

  # Linux specifics
  if [[ `uname` == 'Linux' ]]; then

    # Clipboard copy
    alias pbcopy='xsel --clipboard --input'

    # Purge memory
    alias purge='sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'

    say () {
       espeak -a 200 $1 2>/dev/null
    }

    download () {
      transmission-remote-cli -c $ZAVATTA $1 >/dev/null 2>/dev/null && echo 'Downloading!' || echo 'Fail.'
    }

  fi

# }
