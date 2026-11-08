# Gurtvim

Welcome to Gurtvim, a [Neovim](https://neovim.io/) distribution made by gurt.

## Features

* Turns Neovim into an IDE.
* Made for the specific individual gurt and the 2 people who may use this.

## Requirements

* Neovim >= **0.11**
* Git >= **2.19.0**
* tree-sitter-cli and a C compiler
* ripgrep
* curl
* Any [Nerd font](https://www.nerdfonts.com/)
* A terminal that supports true color:
    * [kitty](https://sw.kovidgoyal.net/kitty/)
    * [iterm2](https://iterm2.com/)
    * [Alacritty](https://alacritty.org)
    * [wezterm](https://github.com/wezterm/wezterm)
    * [ghostty](https://ghostty.org/)

## Installation

* Make sure to have the requirements
* Backup your previous Neovim configurations: 
    ` mv ~/.config/nvim{,.bak} `
* Clone the repository:
    ` git clone https://github.com/gurt267ill/gurtvim ~/.config/nvim `
* Remove the .git:
    ` rm -rf ~/.config/nvim/.git `
* You should be ready after running `nvim` in your terminal.
