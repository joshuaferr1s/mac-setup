#!/bin/zsh

echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
sudo -v
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Install Brew CLIs"
BREWS=(git fortune)
brew install ${BREWS[@]}

echo "Install Brew Casks"
CASKS=(figma iterm2 visual-studio-code)
brew install --cask ${CASKS[@]}

echo "Configure zsh"
cp .zshrc ~/.zshrc

echo "Remove login message"
cp .hushlogin ~/.hushlogin

echo "Set hostname"
hostname -s joshuas-mac

echo "Create 'dev' directory"
mkdir ~/dev

echo "Configure Git"
git config --global init.defaultBranch main
echo .DS_Store >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
