#!/bin/bash

echo "Installing Xcode command line tools"
xcode-select --install

echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew command line tools"
for cli in (git node yarn)
do
  echo "Installing $cli"
  brew install $cli
done

echo "Installing brew casks"
for app in (iterm2 firefox visual-studio-code discord figma insomnia adobe-acrobat-reader steam robo-3t)
do
  echo "Installing $app"
  brew cask install $app
done

read -p "Do you want to install mongodb?" yn
case $yn in
  [Yy]* ) brew tap mongodb/brew; brew install mongodb-community@4.2; break;;
  * ) break;
esac
