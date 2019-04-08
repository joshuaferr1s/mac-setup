#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
bold=`tput bold`
reset=`tput sgr0`

waiter()
{
  read -p "${red}Press enter to continue${reset}"
}

green_text()
{
  echo "${green}$1${reset}"
}

red_text()
{
  echo "${bold}${red}$1${reset}"
}

green_text "Another fresh install... Huh, to each their own."
waiter

green_text "Installing command line tools"
xcode-select --install
red_text "Do not continue until the installation is complete"
waiter

green_text "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

green_text "The Homebrew installation should now be complete."
waiter

green_text "Updating to the latest version of bash."
brew install bash
sudo cp shells /etc/shells
cat /etc/shells
red_text "If this file is commented out except for /usr/local/bin/bash then continue, if not change it manually as shown in the README.md"
waiter

chsh -s /usr/local/bin/bash
echo "Bash version: $BASH_VERSION"
red_text "If you see the latest version continue, if not change it manually as shown in the README.md"
waiter

green_text "Installing command line interfaces..."
for cli in (git node "yarn --ignore-dependencies" fortune vcprompt)
do
  echo "Installing $cli"
  brew install $cli
done

green_text "Installing Vue cli"
yarn global add @vue/cli

green_text "Installing expo-cli"
yarn global add expo-cli

green_text "Installing casks..."
for app in iterm2 alfred google-chrome google-backup-and-sync visual-studio-code discord figma atom postman
do
  echo "Installing $app"
  brew cask install $app
done

green_text "Cleaning up brew install files"
brew cleanup
rm -f -r ~/Library/Caches/Homebrew/*

green_text "Installing Google Fonts..."
for font in SourceCodePro-Black.ttf SourceCodePro-Bold.ttf SourceCodePro-ExtraLight.ttf SourceCodePro-Light.ttf SourceCodePro-Medium.ttf SourceCodePro-Regular.ttf SourceCodePro-Semibold.ttf selima_.otf
do
  echo "Installing $font"
  cp Fonts/${font} ~/Library/Fonts
done

green_text "Installing vscode extensions..."
while read line; do code --install-extension "$line"; done < vscode/vscode-extensions.txt

green_text "Installing vscode user settings..."
cp vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

green_text "Updating dotfiles..."
for dotfile in .bash_profile .gitconfig .gitignore
do
    rm ~/$(echo $dotfile)
    cp /dotfiles/$(echo $dotfile) ~/$(echo $dotfile)
done

green_text "Moving dotfiles from here to home directory..."
cp ".gitignore" "$HOME/.gitignore"
cp ".gitconfig" "$HOME/.gitconfig"
cp ".bash_profile" "$HOME/.bash_profile"

green_text "You're good to go! o7 CMDR"
