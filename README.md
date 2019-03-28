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
    * Google Chrome
        * [Honey](https://chrome.google.com/webstore/detail/honey/bmnlcjabgnpnenekpadlanbbkooimhnj)
        * [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa)
        * [Privacy Badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp)
        * [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
        * [Vue.js devtools](https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)

## VS Code

### Themes & Icons
* [Nord by arcticicestudio](https://marketplace.visualstudio.com/items?itemName=arcticicestudio.nord-visual-studio-code)
* [Palenight by whizkydee](https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme)
* [Material by Mattia Astorino](https://marketplace.visualstudio.com/items?itemName=Equinusocio.vsc-material-theme)
* [Material Icon Theme by Philipp Kief](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

### Pretty Code
* [Beautify by HookyQR](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
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