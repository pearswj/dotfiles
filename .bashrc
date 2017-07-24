# homebrew bash completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
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
