## About

Simply my configuration files for vim and tmux. I use bépo, tmux and python on a regular basis. They are without any pretension: I try to keep these as lightweight as possible.

This .vimrc does not follow [bépo official vim configuration](https://bepo.fr/wiki/Vim). As I used vim and bépo before knowing it and already had muscle memories for tsrn, I chose to simply rebind hjkl direction keys to where they made sense on bépo: j to right, k to left, h to down and l to up.
It makes far less remaps, and builds muscle memory for j and k as movements, as these are used on a lot of other applications.

I started on May 2019 using tmux, hence you won't find anything more than the strict necessary to integrate it with vim.

## Plugins

Plugins are managed with [Vundle](https://github.com/VundleVim/Vundle.vim).
- Flake8 (for Python)
- gruvbox (color scheme)
- vim-tmux-navigator

## Installation

1. Clone this repository: `git clone https://github.com/OLaprevote/.vim.git`. Alternatively `git init` in your .vim, then add it as remote: `git remote add https://github.com/OLaprevote/vim.git`.
2. Install [Vundle](https://github.com/VundleVim/Vundle.vim)
3. Symlink these .vimrc and .tmux.conf in your `$HOME`:
    `ln -s .vim/.vimrc $HOME/.vimrc; ln -s .vim/.tmux.conf $HOME/.tmux.conf`
