#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export LC_ALL=en_US.UTF-8

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
