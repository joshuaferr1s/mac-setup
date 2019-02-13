#!/bin/bash

export TERM=xterm-256color

# PROMPT STUFF
GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
PURPLE=$(tput setaf 93);
RESET=$(tput sgr0);

function git_branch {
	# Shows the current branch if in a git repository
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/';
}

function random_element {
	declare -a array=("$@")
	r=$((RANDOM % ${#array[@]}))
	printf "%s\n" "${array[$r]}"
}

function mkcd() {
	mkdir $1 && cd $1
}

# Default Prompt
setEmoji() {
	EMOJI="$*"
	PS1="${PURPLE}\w${GREEN}\$(git_branch)${RESET} ${EMOJI}\n$ ";
}

newRandomEmoji() {
	setEmoji "$(random_element 👾 👨🏻‍🌾 🐎 🤯 👨🏻‍💻 🌵 🙈 🦍)"
}

fortune -s | cowsay -f moose;
newRandomEmoji

# History Size
HISTSIZE=5000
HISTFILESIZE=10000
shopt -s autocd
shopt -s histappend

# Path Alterations
PATH="$PATH:$HOME/.bin";
PATH="$PATH:$HOME/.my_bin";

# Aliases
alias ..="cd .."
alias pg="echo 'Pinging Google' && ping www.google.com"
alias sb="source ~/.bash_profile"
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder';
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder';
alias deleteDSFiles="find . -name '.DS_Store' -type f -delete"
alias trash='rm -rf ~/.Trash/*';
alias o='open .';
# Git Aliasas
function gc { git commit -m "$@"; }
alias gs="git status";
alias gp="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
