#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ls='logo-ls'
alias la='logo-ls -A'
alias ll='logo-ls -al'
# equivalents with Git Status on by Default
alias ilsg='logo-ls -D'
alias ilag='logo-ls -AD'
alias illg='logo-ls -alD'

#figlet
alias fl='figlet -t -f /usr/share/figlet/collection/figlet-fonts/3d'

neofetch --ascii_distro tux
