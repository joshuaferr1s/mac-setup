#!/bin/zsh

sudo -v

# Install Xcode command lines tools and Homebrew
echo "Installing Xcode CLI and Homebrew..."
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew Install
BREWS=(git node fortune)
brew install ${BREWS[@]}

# Brew Cask Install
CASKS=(bitwarden firefox visual-studio-code discord insomnia adobe-acrobat-reader webex-meetings r rstudio slack google-chrome obsidian github zoom docker docker-compose)
brew install --cask ${CASKS[@]}

# Set the hostname to joshuas-mac
sudo hostname -s joshuas-mac

# Configure Git
git config --global user.name "Joshua Ferris"
git config --global user.email jajjferris@gmail.com

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Creates a dev directory
mkdir "~/dev"
