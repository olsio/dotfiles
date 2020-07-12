export ZSH=~/.zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Extend Autocomplete Search Path
fpath=($HOME/.zsh/lib/completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Go Path related exports
export GOPATH=~/Projekte/Go
export PATH=$PATH:$GOPATH/bin


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
