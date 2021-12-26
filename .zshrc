# Enable zsh features
autoload -Uz compinit && compinit
autoload -U promptinit && promptinit

# Startup Quote
fortune -s

# Configure Prompt
PROMPT=$'%{\e[0;36m%}%~ > %{\e[0m%}'

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
alias pclear='clear && fortune -s'
alias iCloud='cd "/Users/joshua/Library/Mobile Documents/com~apple~CloudDocs/"'
