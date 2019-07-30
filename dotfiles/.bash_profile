#!/bin/bash

export TERM=xterm-256color
export HISTSIZE=5000
export HISTFILESIZE=10000
export PATH=$PATH:$HOME/bin
shopt -s autocd
shopt -s histappend

# PROMPT STUFF
GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
PURPLE=$(tput setaf 93);
RESET=$(tput sgr0);

function random_element {
	declare -a array=("$@")
	r=$((RANDOM % ${#array[@]}))
	printf "%s\n" "${array[$r]}"
}

setEmoji() {
	EMOJI="$*"
	PS1="${PURPLE}\w${GREEN}\$(vcprompt)${RESET} ${EMOJI}\n$ ";
}

newRandomEmoji() {
	setEmoji "$(random_element 👾 👨🏻‍🌾 👨🏻‍💻 🌵 🙈 🤠)"
}

fortune -s | cowsay -f head-in | lolcat
newRandomEmoji

# Functions
function mkcd() {
	mkdir $1 && cd $1
}
killport() {
	lsof -i tcp:"$*" | awk 'NR!=1 {print $2}' | xargs kill -9 ;
	echo "Port" $1 "found and killed."
}
killCommonPorts() {
	echo "Attempting to kill port: 3000, 5000, 8080"
	lsof -i tcp:3000 | awk 'NR!=1 {print $2}' | xargs kill -9 ;
	lsof -i tcp:5000 | awk 'NR!=1 {print $2}' | xargs kill -9 ;
	lsof -i tcp:8080 | awk 'NR!=1 {print $2}' | xargs kill -9 ;
	echo "Ports killed."
}
function gc { git commit -m "$@"; }
# Aliases
alias ..="cd .."
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -pv"
alias openPorts="sudo lsof -i | grep LISTEN"
alias pg="echo 'Pinging Google' && ping www.google.com"
alias sb="source ~/.bash_profile"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder';
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder';
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias trash='rm -rf ~/.Trash/*';
alias o='open .';
# Git Aliasas
alias gs="git status";
alias gss='git status -s'
alias gp="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gcm='git commit -m'
alias gr='git reset --hard HEAD'
alias gb='git branch -a'
alias cleanBrew='brew cleanup && rm -f -r ~/Library/Caches/Homebrew/*'