# Mac Setup
1. xcode-select --install
1. sh setup.sh
1. sudo nano /etc/shells
1. comment all out and add /usr/local/bin/bash
1. chsh -s /usr/local/bin/bash
1. Then manually configure stuff

##Snippets
Installs
```
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install fortune
brew install cowsay
brew cask install iterm2
brew install bash
brew install git
brew cask install alfred
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install visual-studio-code
brew cask install discord
npm install -g lite-server eslint

brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
```

Visual Studio Code Settings
```
{
    "editor.snippetSuggestions": "top",
    "editor.fontFamily": "Anonymous Pro",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.colorTheme": "Seti Monokai",
    "editor.multiCursorModifier": "ctrlCmd",
    "files.autoSave": "onFocusChange",
    "editor.tabSize": 2,
    "editor.fontSize": 16,
    "editor.formatOnPaste": false,
    "editor.minimap.enabled": false,
    "editor.fontLigatures": true,
    "editor.lineHeight": 0,
    "terminal.integrated.fontSize": 16,
    "explorer.openEditors.visible": 0,
    "emmet.showAbbreviationSuggestions": false,
    "workbench.colorCustomizations": {
        "activityBarBadge.background": "#C6FF00",
        "list.activeSelectionForeground": "#C6FF00",
        "list.inactiveSelectionForeground": "#C6FF00",
        "list.highlightForeground": "#C6FF00",
        "scrollbarSlider.activeBackground": "#C6FF0050",
        "editorSuggestWidget.highlightForeground": "#C6FF00",
        "textLink.foreground": "#C6FF00",
        "progressBar.background": "#C6FF00",
        "pickerGroup.foreground": "#C6FF00",
        "tab.activeBorder": "#C6FF00",
        "notificationLink.foreground": "#C6FF00"
    },
    "eslint.validate": [
        {
            "language": "vue",
            "autoFix": true
        },
        {
            "language": "html",
            "autoFix": true
        },
        {
            "language": "javascript",
            "autoFix": true
        }
    ],
    "workbench.startupEditor": "newUntitledFile"
}
```
