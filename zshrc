# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/buster/.zshrc'

# Insert- and normal mode prompts
vi_norm_mode=$'\e[0;30m\e[42m N \e[40m\e[32m\e[37m\e[40m %1~ \e[0;30m\e[0m '
vi_ins_mode=$'\e[0;30m\e[46m I \e[40m\e[36m\e[37m\e[40m %1~ \e[0;30m\e[0m '

function zle-keymap-select {
  PS1="${${KEYMAP/vicmd/${vi_norm_mode}}/(main|viins)/${vi_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  PS1=$vi_ins_mode
}
zle -N zle-line-finish

PS1=${vi_ins_mode}

EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim

# Git aliases
alias gs='git status -s'
alias gd='git diff'
alias ga='git add -i'
alias gaf='git add'
alias gap='git add -p'
alias gc='git commit -e'
alias gp='git push'
alias ddg='sr -browser=lynx duckduckgo'

# Misc aliases
alias bk='cd ..'
alias ls='ls --color=always'
alias la='ls -AlhG --color=always'
alias pacman='pacman --color=always'
alias some='less -R'

# Full-screen editing of scripts with 'v' in normal mode
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

autoload colors; colors;
autoload -Uz compinit
compinit
# End of lines added by compinstall
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
      'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
