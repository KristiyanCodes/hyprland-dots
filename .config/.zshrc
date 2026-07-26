export PATH="$HOME/.local/bin:$PATH"
autoload -U colors && colors
PROMPT="%F{blue}%1~%f%F{214}>%f "
autoload -Uz compinit && compinit
autocompletion="true"
setopt correct
alias ls="ls --color=auto"
alias grep="grep --color"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
