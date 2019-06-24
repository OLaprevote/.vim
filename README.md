## About

Simply my configuration files for vim and tmux. I use bépo, tmux and python on a regular basis. They are without any pretention: I try to keep these as lightweight as possible.

This .vimrc does not follow [BÉPO official vim configuration](https://bepo.fr/wiki/Vim). As I used vim and BÉPO before knowing it and already had muscle memories for tsrn, I chose to simply rebind hjkl direction keys to where they made sense on bépo: j to right, k to left, h to down and l to up.
It makes far less remaps, and builds muscle memory for j and k as movements, as these are used on a lot of other applications.

I started on May 2019 using tmux, hence you won't find anything more than the strict necessary to integrate it with vim.

## Plugins

Plugins are managed with [Vundle](https://github.com/VundleVim/Vundle.vim).
- Flake8 (for Python)
- gruvbox (colorscheme)
- vim-tmux-navigator
