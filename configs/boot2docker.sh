#!/bin/sh

# echo "Boot2Docker version $(cat /etc/version), build $(cat /etc/boot2docker)"
# docker -v

git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo "("${ref#refs/heads/}") ";
}

# PS1
PS1="[\[\e[32;1m\]\u@\h\[\e[0m\] \w]\\# \$(git_branch)"

# Alias
alias df='df -h'
alias du='du -h'

alias ls='ls -p'
alias ll='ls -l'
alias la='ls -la'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
