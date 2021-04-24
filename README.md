# Joshua Ferris's Mac Setup

> In an ideal world the shell script would take care of everything but manual configuration is still required.

## Instructions

Run the shell script using `sh setup.sh`.

Enable tap to click in mac settings.

Add the following to the start of the `.zshrc`: `fortune -s`

Add the following aliases to the `.zshrc`

```sh
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
alias pclear='clear && fortune -s'
```
