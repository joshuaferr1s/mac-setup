#!/bin/zsh

echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
sudo -v
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Brew CLIs"
BREWS=(git fortune r)
brew install ${BREWS[@]}

echo "Install Brew Casks"
CASKS=(expressvpn figma github google-chrome google-drive iterm2 rstudio visual-studio-code zoom)
brew install --cask ${CASKS[@]}

echo "Configure zsh"
cp .zshrc ~/.zshrc

echo "Remove login message"
cp .hushlogin ~/.hushlogin

echo "Set hostname"
hostname -s joshuas-mac

echo "Create 'dev' directory"
mkdir ~/dev
