#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# My aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mpvHDR="ENABLE_HDR_WSI=1 mpv --vo=gpu-next --target-colorspace-hint --gpu-api=vulkan --gpu-context=waylandvk $1"

PS1='[\u@\h \W]\$ '
