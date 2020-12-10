#!/bin/zsh

# Install Xcode command lines tools and Homebrew
echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
sudo -v
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew Install
BREWS=(git node fortune)
brew install ${BREWS[@]}

# Brew Cask Install
CASKS=(bitwarden iterm2 firefox visual-studio-code discord insomnia adobe-acrobat-reader webex-meetings r rstudio slack google-chrome)
brew cask install ${CASKS[@]}

# Set the hostname to joshuas-mac
hostname -s joshuas-mac

# Copy dotfiles
cp .gitconfig ~/.gitconfig
cp .zshrc ~/.zshrc

# Configure vscode
echo "Installing vscode extensions..."
while IFS="" read -r p || [ -n "$p" ]
do
  code --install-extension $p
done < vscode/extensions.txt

echo "Copying vscode settings.json..."
cp "vscode/vscode-settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

# Creates a dev directory
mkdir "~/dev"
