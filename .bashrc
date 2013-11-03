#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias la='ls -Al --color=auto'

# PS1='[\u@\h \W]\$ '
PS1='\[\e[0;33m\]\W >\[\e[0m\] '
