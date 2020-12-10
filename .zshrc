# Prompt
autoload -U colors && colors
fortune -s
PS1="%B%{$fg[red]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} >%b "

# Options
HISTSIZE=500
SAVEHIST=500
HISTFILE=~/.cache/zsh/history
setopt AUTO_CD

# Aliases
mkcd() { mkdir $1 && cd $1 }
gc() { git commit -m "$*" }
alias gs='git status'
alias ga='git add -A'
alias gp='git push'
alias commit='git add -A; git commit -m'
alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder';
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder';
alias reload='source ~/.zshrc'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias dixonServer='ssh joshua@192.168.1.200'
alias pclear='clear && fortune -s | cowsay -f bunny | lolcat'
