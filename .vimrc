set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Python PEP8 check, use <F7>
Plugin 'nvie/vim-flake8'

" Colorscheme
Plugin 'godlygeek/csapprox'
Plugin 'wmvanvliet/vim-blackboard'
Plugin 'szorfein/fromthehell.vim'
Plugin 'DankNeon/vim'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'sjl/badwolf'

" vim tmux
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Colorscheme
set termguicolors
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard' 


syntax enable
"set relative numbers
set number
set relativenumber
"set cursorline
set showmatch  "highlight matching brackets

set incsearch
set hlsearch

"sets the columns highlighted
"In python comments should stop at 72 chars, lines at 79 chars.
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%80v', 100)
call matchadd('ColorColumn', '\%73v', 100)

"sets the tabs comportment
set expandtab       " insert spaces when hitting TAB
set tabstop=4       " a hard TAB displays as 4 columns. Insert 4 columns if expandtab
set shiftwidth=4    " >> indents 4 columns; << unindents 4 columns
set softtabstop=4   " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set smarttab    " 
set shiftround  " when using >> or << always indent to multiple of 'shiftwidth'
set autoindent  " align the new line indent with the previous line

autocmd BufWritePre *.py :%s/\s\+$//e

" Enable folding
set foldmethod=indent
set foldlevel=10


" REMAP
" Enable folding with the spacebar
nnoremap <space> za

" Remove arrow keys
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>

" BÉPO
" k and j move by virtual line, but behave normally when used with a count.
noremap k h
noremap <silent> <expr> h (v:count == 0 ? 'gj' : 'j')
noremap j l
noremap <silent> <expr> l (v:count == 0 ? 'gk' : 'k')

" Remap marking and tabs
noremap è `
noremap « <
noremap » >
noremap é ^
noremap à zz

" remap keys to change screen. Should be done by vim-tmux-navigator but duh
" whatever.

let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-L> :TmuxNavigateUp<cr>
noremap <silent> <C-K> :TmuxNavigateLeft<cr>
noremap <silent> <C-H> :TmuxNavigateDown<cr>
noremap <silent> <C-J> :TmuxNavigateRight<cr>
