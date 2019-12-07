autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%F{011}[%b]%f'

EMOJI=(👾 👨🏻‍🌾 👨🏻‍💻 🌵 🙈 🤠)

setopt AUTO_CD
setopt PROMPT_SUBST
fortune -s | cowsay -f bunny | lolcat
PROMPT='
%F{031}%~%f ${vcs_info_msg_0_} $EMOJI[$RANDOM%$#EMOJI+1]
> '

# Functions
gc() { git commit -m "$*" }
mkcd() { mkdir $1 && cd $1 }
# Aliases
alias gs='git status'
alias ga='git add .'
alias gp='git push'
alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder';
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder';
