
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000



#plugins
source ~/.zsh/sudo/sudo.plugin.zsh

#autocomplete
autoload -Uz compinit
compinit

PROMPT="%F{green}%B[%n@%m %f%1~%F{green}]%(!.#.$) %f%b"

#setopt CORRECT_ALL
setopt autocd

#case insensitive completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt no_list_ambiguous

#aliases
alias ls='ls --color'
alias cp="cp -i" 
alias -g smplayer='env QT_QPA_PLATFORM=xcb smplayer'
la() { setsid $1 &>/dev/null ;}
 
#history
bindkey '^[k' history-beginning-search-backward 
bindkey '^[j' history-beginning-search-forward  
#kill and killall completion
zstyle ':completion:*:processes' command 'ps -ax' 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;32'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always
