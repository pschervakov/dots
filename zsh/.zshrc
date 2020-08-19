
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#plugins
source ~/.zsh/sudo/sudo.plugin.zsh

#autocomplete
autoload -Uz compinit
compinit

PROMPT="%F{green}%B[%n@%m %f%1~%F{green}]%(!.#.$) %f%b"

setopt CORRECT_ALL
setopt autocd

#case insensitive completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt no_list_ambiguous

#aliases
alias ls='ls --color'
alias cp="cp -i" 
la() { setsid $1 &>/dev/null ;}
