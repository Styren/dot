# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

autoload colors; colors;
autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
      'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# Insert- and normal mode prompts
vi_norm_mode=$'\e[0;30m\e[42m N \e[40m\e[32m\e[37m\e[40m %1~ \e[0;30m\e[0m '
vi_ins_mode=$'\e[0;30m\e[46m I \e[40m\e[36m\e[37m\e[40m %1~ \e[0;30m\e[0m '

function zle-keymap-select {
  PROMPT="${${KEYMAP/vicmd/${vi_norm_mode}}/(main|viins)/${vi_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  PROMPT=$vi_ins_mode
}
zle -N zle-line-finish

PROMPT=${vi_ins_mode}

# Git aliases
alias gs='git status -s'
alias gd='git diff'
alias gdc='git diff --cached'
alias ga='git add -i'
alias gaf='git add'
alias gap='git add -p'
alias gc='git commit -e'
alias gp='git push'

# Misc aliases
alias bk='cd ..'
alias ls='ls --color=always'
alias la='ls -AlhG --color=always'
alias pacman='pacman --color=always'
alias some='less -R'
alias ddg='sr -browser=lynx duckduckgo'

# reverse search in vi-mode
bindkey '^R' history-incremental-search-backward
# reverse pattern search in vi-mode
bindkey '^P' history-incremental-pattern-search-backward

# Full-screen editing of scripts with 'v' in normal mode
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
