HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle :compinstall filename '~/.zshrc'

bindkey -v

setopt auto_cd
setopt auto_pushd

autoload -U colors && colors
PROMPT="%{$fg[blue]%}[%n@%m]%{$fg[green]%}%~%{$fg[red]%}
%#->%{$reset_color%}"

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
