#!/bin/zsh

BREWS=(git node deno cowsay fortune lolcat)
CASK=(bitwarden nordvpn iterm2 firefox visual-studio-code discord insomnia adobe-acrobat-reader webex-meetings r rstudio)

echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
sudo -v
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brews and casks..."
brew install ${BREWS[@]}
brew cask install ${CASKS[@]}

echo "Setting the hostname to joshuas-mac..."
hostname -s joshuas-mac

echo "Copying dotfiles..."
cp .gitconfig ~/.gitconfig
cp .zshrc ~/.zshrc

echo "Installing vscode extensions..."
while IFS="" read -r p || [ -n "$p" ]
do
  code --install-extension $p
done < vscode/extensions.txt

echo "Copying vscode settings.json..."
cp "vscode/vscode-settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

echo "Making a dev directory..."
mkdir "~/dev"
