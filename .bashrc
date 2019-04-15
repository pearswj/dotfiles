# homebrew bash completion
# https://docs.brew.sh/Shell-Completion

if type brew &>/dev/null; then
  for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
  do
    [[ -f $COMPLETION ]] && source "$COMPLETION"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi

# prompt and color

source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
PS1="\h:\W \u\[\033[0;33m\]\$(__git_ps1 \" (%s)\")\[\033[0m\]\$ "

export CLICOLOR=1

# globstar

shopt -s globstar

# added by travis gem
[ -f /Users/will/.travis/travis.sh ] && source /Users/will/.travis/travis.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias github="/Applications/GitHub\ Desktop.app/Contents/MacOS/github_cli"


# atom one dark

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# msbuild

alias msbuild="msbuild /clp:disableconsolecolor"

# rbenv
eval "$(rbenv init -)"
