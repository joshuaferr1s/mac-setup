# Mac Setup

## Setup
1. `sh setup.sh`
1. Manual Configuration
    * Iterm2
        * Working Directory -> Reuse previous session's directory
        * Keys -> Load Preset - Natural text editing
        * Window -> columns 80, rows 20
    * Mac Display Settings
        * Sleep timeout -> never
    * Alfred
        * cmd+space to use - remove that for spotlight
        * Appearance -> Alfred macOS
    * Firefox
        * [Honey](https://addons.mozilla.org/en-US/firefox/addon/honey/?src=search)
        * [React Developer Tools](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)
        * [Vue.js devtools](https://addons.mozilla.org/en-US/firefox/addon/vue-js-devtools/)

## VS Code

### Themes & Icons
* [SynthWave '84 by Robb Owen](https://marketplace.visualstudio.com/items?itemName=RobbOwen.synthwave-vscode)
* [Simple icons by Laurent Tréguier](https://marketplace.visualstudio.com/items?itemName=LaurentTreguier.vscode-simple-icons)

### Pretty Code
* [Beautify by HookyQR](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
* [DotENV by mikestead](https://marketplace.visualstudio.com/items?itemName=mikestead.dotenv)
* [ESLint by Dirk Baeumer](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [Firebase by toba](https://marketplace.visualstudio.com/items?itemName=toba.vsfire)
* [Vetur by Pine Wu](https://marketplace.visualstudio.com/items?itemName=octref.vetur)

### Intellisense
* [IntelliSense for CSS class names in HTML by Zignd](https://marketplace.visualstudio.com/items?itemName=Zignd.html-css-class-completion)
* [npm Intellisense by Christian Kohler](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense by Christian Kohler](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)

### Code Helpers
* [Auto Close Tag by Jun Han](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Auto Rename Tag by Jun Han](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [Bracket Pair Colorizer by CoenraadS](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
* [Import Cost by Wix](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [Live Server by Ritwick Dey](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

## Shell Script Help
shells should look like so:
```bash
# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

# /bin/bash
# /bin/csh
# /bin/ksh
# /bin/sh
# /bin/tcsh
# /bin/zsh
/usr/local/bin/bash
```