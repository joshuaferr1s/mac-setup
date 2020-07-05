# Enable colors and change prompt
autoload -U colors && colors

# Zsh History
HISTSIZE=500
SAVEHIST=500
HISTFILE=~/.cache/zsh/history

# Zsh auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) #include hidden files

# Paths
export PATH="/Users/joshua/.deno/bin:$PATH"

EMOJI=(👾 👨🏻‍🌾 👨🏻‍💻 🌵 🙈 🤠)

setopt AUTO_CD
setopt PROMPT_SUBST
fortune -s | cowsay -f bunny | lolcat
PS1="%B%{$fg[red]%}[%{$fg[blue]%}%n@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Functions
gc() { git commit -m "$*" }
mkcd() { mkdir $1 && cd $1 }
# Aliases
alias gs='git status'
alias ga='git add -A'
alias gp='git push'
alias commit='git add -A; git commit -m'
alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder';
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder';
alias reload='source ~/.zshrc'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias dixonServer='ssh joshua@192.168.1.200'
alias jajjferrisServer='ssh joshua@jajjferris.com'
