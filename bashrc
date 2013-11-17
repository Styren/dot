#
# ~/.bash_profile
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start in tmux
# if which tmux 2>&1 >/dev/null; then
#   test -z "$TMUX" && (tmux attach || tmux new-session)
# fi
# Aliases
alias bk='cd ..'
alias ls='ls --color=auto'
alias la='ls -AlhG --color=auto'
alias pacman='pacman --color=auto'
alias gs='git status -s'
alias gd='git diff'
alias ga='git add -i'
alias gaf='git add'
alias gap='git add -p'
alias gc='git commit -e'
alias gp='git push'
alias ddg='sr -browser=lynx duckduckgo'
# loads inputrc for readline - TODO this line SHOULD be omitted but is required
bind -f ~/.inputrc

# Environmental variables predef
PS1='\[\e[0;33m\]\W >\[\e[0m\] '
EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim
