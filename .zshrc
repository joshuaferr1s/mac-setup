export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Prompt
fortune -s
autoload -U promptinit; promptinit
prompt pure

# Aliases
mkcd() { mkdir $1 && cd $1 }
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
alias iCloud='cd "/Users/joshua/Library/Mobile Documents/com~apple~CloudDocs/"'
