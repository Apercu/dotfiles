# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                              #
# ============================================================================ #

# -- Prompt {
# =========

  export PS1=$'%{\e[0;32m%}[%n%{\e[0;36m%}|%{\e[0;31m%}%m]%{\e[0;33m%} %{\e[0m%}[%{\e[0;37m%}%?%{\e[0m%}]%{\e[0;33m%} %1~ %{\e[0m%}%{\e[0;34m%}$%{\e[0;0m%} '

# }


# -- User centred values {
# ======================

  export MAIL42='mpillet@student.42.fr'
  export USER42='mpillet'
  export DEFAULT_USER='meriadec'
  export ZAVATTA='192.99.2.67'

# }


# -- Aliases {
# ==========

  # Let .profile manage .profile
  alias prof='vim ~/.profile'
  alias sprof='source ~/.profile'

  # `ls` thoughts
  alias lt='ls -lt'

  # Folders
  alias gg='cd ~/git'
  alias dl='cd ~/Downloads'
  alias dot='cd ~/git/dotfiles'
  alias ogg='cd ~/git/Ogg'

  # Git
  alias gits='git status'
  alias gitf='git flow'
  alias gitp='git push'
  alias gitc='git commit'
  alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'
  alias unscaffold='git config --local user.name meriadec && git config --local user.email meriadec.pillet@gmail.com && git commit --amend --author "meriadec <meriadec.pillet@gmail.com>" && git config --local --unset user.email && git config --local --unset user.name'
  alias validinstall='ln -s ~/git/dotfiles/files/validate-commit-msg.js .git/hooks/commit-msg'

  # Linux specifics
  if [[ `uname` == 'Linux' ]]; then

    # Clipboard copy
    alias pbcopy='xsel --clipboard --input'

    # Purge memory
    alias purge='sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'

    # Pacman upgrade
    alias upgrade='sudo pacman -Syu'

  fi

  # Other
  alias gosleep="sudo shutdown -h +60"
  alias yolo="sudo dhcpcd && startx"

# }
