#!/bin/zsh

echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
sudo -v
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Install Brew CLIs"
BREWS=(git gh nvm fortune)
brew install ${BREWS[@]}

echo "Install Brew Casks"
CASKS=(adobe-acrobat-reader brave-browser discord docker expressvpn figma github hyper rstudio visual-studio-code zoom)
brew install --cask ${CASKS[@]}

echo "Create nvm folder"
mkdir ~/.nvm

echo "Configure zsh"
cp .zshrc ~/.zshrc

echo "Configure Hyper"
cp .hyper.js ~/.hyper.js

echo "Set hostname"
hostname -s joshuas-mac

echo "Create 'dev' directory"
mkdir ~/dev
