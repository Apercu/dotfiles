# ============================================================================ #
#                                                                              #
# ---------                           .profile                         ------- #
#                                                                              #
# ============================================================================ #

# -- User centred values {
# ======================

  export PS1=$'%{\e[0;34m%}%n@%m%{\e[0;33m%} %{\e[0m%}[%{\e[0;37m%}%?%{\e[0m%}]%{\e[0;33m%} %1~ %{\e[0m%}%{\e[0;34m%}$%{\e[0;0m%} '
  export MAIL42='mpillet@student.42.fr'
  export USER42='mpillet'
  export DEFAULT_USER='meriadec'

# }


# -- Aliases {
# ==========

  # Let .profile manage .profile
  alias prof='vim ~/.profile'
  alias sprof='source ~/.profile'

  # `ls` thoughts
  alias lt='ls -lt'
  alias llink='ls -l `find . -maxdepth 1 -type l -print`'

  # Folders
  alias gg='cd ~/git'
  alias dl='cd ~/Downloads'
  alias dot='cd ~/git/dotfiles'

  # Git
  alias gits='git status'
  alias gitf='git flow'
  alias gitp='git push'
  alias gitc='git commit'
  alias scaffold='git config --local user.name TheScaffolder && git config --local user.email spam@forpurpose.io && git commit --amend --author "TheScaffolder <spam@forpurpose.io>" && git config --local --unset user.email && git config --local --unset user.name'
  alias unscaffold='git config --local user.name meriadec && git config --local user.email meriadec.pillet@gmail.com && git commit --amend --author "meriadec <meriadec.pillet@gmail.com>" && git config --local --unset user.email && git config --local --unset user.name'
  alias validinstall='ln -s ~/git/dotfiles/files/validate-commit-msg.js .git/hooks/commit-msg'

  # -- Linux specifics
  if [[ `uname` == 'Linux' ]]; then

    # Clipboard copy
    alias pbcopy='xsel --clipboard --input'

    # Purge memory
    alias purge='sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'

  fi

  # Youtube stream on mpv
  function ytstream() {
    mpv --really-quiet -cookies -cookies-file /tmp/ytcookie.txt $(youtube-dl -g --cookies=/tmp/ytcookie.txt "$1")
  }
  alias yt=ytstream

  # Other
  alias removestore="find . -name '*.DS_Store' -type f -delete"
  alias run_storyplayr_webapp='mkdir /tmp/cache;grunt server --env=dev'
  alias gosleep="sudo shutdown -h +60"

# }
