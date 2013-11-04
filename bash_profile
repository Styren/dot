#
# ~/.bash_profile
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
if which tmux 2>&1 >/dev/null; then
	test -z "$TMUX" && (tmux attach || tmux new-session)
fi
# Aliases
alias ls='ls --color=auto'
alias la='ls -Al --color=auto'
#
alias ddg='sr -browser=lynx duckduckgo'
# loads inputrc for readline - TODO this line SHOULD be omitted but is required
bind -f ~/.inputrc

# PS1='[\u@\h \W]\$ '
PS1='\[\e[0;33m\]\W >\[\e[0m\] '
