#!/bin/bash

clis=(
  bash
  git
  node
  yarn --ignore-dependencies
  fortune
  cowsay
)
apps=(
  iterm2
  alfred
  google-chrome
  google-backup-and-sync
  visual-studio-code
  discord
)

echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "Installing command line interfaces..."
for cli in clis
do
  echo "Installing: ${cli}"
  brew cask isntall --appdir="/Applications" ${cli}
done
echo "Installing casks..."
for app in apps
do
  echo "Installing: ${app}"
  brew cask isntall --appdir="/Applications" ${app}
done

echo "Cleaning up install files..."
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

echo "Installing vscode extensions..."
while read line; do code --install-extension "$line"; done < vscode-extensions.txt

echo "Moving dotfiles from here to home directory..."
cp ".gitignore" "$HOME/.gitignore"
cp ".gitconfig" "$HOME/.gitconfig"
cp ".bash_profile" "$HOME/.bash_profile"

echo "You're good to go!"
