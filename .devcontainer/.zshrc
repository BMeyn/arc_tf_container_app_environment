export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git azure terraform docker)

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit
