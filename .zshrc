# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="zsommers"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux mercurial npm pip redis-cli sublime virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl

alias ls='ls -h -p --color=auto'

export EDITOR='nano'

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"

export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/projects"
export VIRTUALENV_USE_DISTRIBUTE=true
export VIRTUAL_ENV_DISABLE_PROMPT=true
source "/usr/bin/virtualenvwrapper.sh"

export GOPATH="$HOME/projects/go"

unsetopt beep
