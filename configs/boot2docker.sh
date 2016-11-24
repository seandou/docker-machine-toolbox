#!/bin/sh

# echo "Boot2Docker version $(cat /etc/version), build $(cat /etc/boot2docker)"
# docker -v

git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
  echo "("${ref#refs/heads/}") ";
}

# custom PS1
PS1="\u@\h:\w# \$(git_branch)"

# aliases
alias df='df -h'
alias du='du -h'

alias ls='ls -p'
alias ll='ls -l'
alias la='ls -la'

# Avoid errors... use -f to skip confirmation.
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
