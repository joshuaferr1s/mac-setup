# My Mac Setup

## Shell script

Run the shell script using `sh setup.sh` in the terminal. This will install the following:

* Xcode command line tools
* Homebrew
* Brew installs: git, node, yarn
* Brew cask installs: iterm2, firefox, visual-studio-code, discord, figma, insomnia, adobe-acrobat-reader, steam, and robo-3t
* Optionally - Mongodb

## Configuration

### iTerm2

* General > Working Directory: Reuse previous session's directory
* Colors > Foreground color: #00ff00
* Key > Load preset - Natural text editing
* Window > 80x20
* Text > [mononoki](https://github.com/madmalik/mononoki)
* Text > Font size: 14

### Firefox

* [Vue.js devtools](https://addons.mozilla.org/en-US/firefox/addon/vue-js-devtools/)
* [React Developer Tools](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)

### Visual Studio Code

* [Bracket Pair Colorizer by CoenraadS](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
* [ESLint by Dirk Baeumer](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
* [Import Cost by Wix](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost)
* [npm Intellisense by Christian Kohler](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Simple icons by Laurent Tréguier](https://marketplace.visualstudio.com/items?itemName=LaurentTreguier.vscode-simple-icons)
* [SynthWave '84 by Robb Owen](https://marketplace.visualstudio.com/items?itemName=RobbOwen.synthwave-vscode)
* [Vetur by Pine Wu](https://marketplace.visualstudio.com/items?itemName=octref.vetur)

Settings.json
```json
{
    "editor.fontFamily": "'Source Code Pro'",
    "editor.fontSize": 15,
    "terminal.integrated.fontSize": 15,
    "workbench.iconTheme": "simple-icons",
    "editor.cursorBlinking": "smooth",
    "editor.cursorSmoothCaretAnimation": true,
    "editor.tabSize": 2,
    "editor.formatOnPaste": true,
    "editor.renderIndentGuides": true,
    "telemetry.enableTelemetry": false,
    "workbench.editor.highlightModifiedTabs": true,
    "explorer.openEditors.visible": 0,
    "files.autoSave": "onFocusChange",
    "editor.multiCursorModifier": "ctrlCmd",
    "editor.minimap.enabled": false,
    "editor.snippetSuggestions": "top",
    "emmet.showAbbreviationSuggestions": false,
    "workbench.startupEditor": "newUntitledFile",
    "eslint.validate": [{
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
    "workbench.colorTheme": "SynthWave '84"
}
```
