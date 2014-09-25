# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

autoload -U colors && colors;
autoload -U compinit
compinit -C
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
      'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# vim default editor
export EDITOR="vim"
export VISUAL="vim"

# automatically change directory if possible (cd foo -> foo)
setopt AUTO_CD

# use pushd instead of cd
setopt AUTO_PUSHD

# don't print if we popd for example
setopt PUSHD_SILENT

# if directory is invalid and not proceeded by / or ~, look in ~
# not working? TODO
setopt CDABLE_VARS

setopt PROMPT_SUBST
setopt MENU_COMPLETE

# glob settings
setopt GLOB_COMPLETE

# Insert- and normal mode prompts
vi_norm_mode=$'%{$fg[black]%}%{$bg[yellow]%} N %{$fg[white]%}%{$bg[black]%} %1~ %{$reset_color%}%{$fg[black]%} %{$reset_color%} '
vi_ins_mode=$'%{$fg[black]%}%{$bg[cyan]%} I %{$fg[white]%}%{$bg[black]%} %1~ %{$reset_color%}%{$fg[black]%} %{$reset_color%} '

function zle-keymap-select {
  PROMPT="${${KEYMAP/vicmd/${vi_norm_mode}}/(main|viins)/${vi_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  PROMPT=${vi_ins_mode}
}
zle -N zle-line-finish

export PROMPT=$vi_ins_mode

# Git aliases
alias gs='git status -s'
alias gd='git diff'
alias gds='git diff --cached'
alias ga='git add -i'
alias gaf='git add'
alias gap='git add -p'
alias gc='git commit -e'
alias gp='git push'

# Misc aliases
alias p='popd'
alias ls='ls --color=always'
alias la='ls -AlhG --color=always'
alias pacman='pacman --color=always'
alias some='less -R'
alias ddg='sr -browser=lynx duckduckgo'

# reverse search in vi-mode
bindkey '^R' history-incremental-search-backward
# reverse pattern search in vi-mode
bindkey '^P' history-incremental-pattern-search-backward

# write and execute script with v-key
bindkey -M vicmd v edit-command-line

# Full-screen editing of scripts with 'v' in normal mode
autoload edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
