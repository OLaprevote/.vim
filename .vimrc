" Python PEP8 check, use <F7>
" Plugin 'nvie/vim-flake8'
" 
" " Colorscheme
" Plugin 'morhetz/gruvbox'
" 
" " vim tmux
" Plugin 'christoomey/vim-tmux-navigator'

" Turn on syntax highlighting
syntax on
" We want to detect filetypes and to run filetype plugins.
filetype plugin on

set termguicolors
autocmd vimenter * colorscheme gruvbox

" Colorscheme
let g:gruvbox_contrast_dark = 'hard' 
set background=dark

" Packages for xml
packadd! matchit

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.xml'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,xml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,xml'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"syntax enable
"set relative numbers
set number
set relativenumber
"set cursorline
set showmatch  "highlight matching brackets

set incsearch
set hlsearch

"sets the columns highlighted
"In python comments should stop at 72 chars, lines at 79 chars.
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%80v', 100)
" call matchadd('ColorColumn', '\%73v', 100)

"sets the tabs comportment
set expandtab       " insert spaces when hitting TAB
set smarttab    " 
set shiftround  " when using >> or << always indent to multiple of 'shiftwidth'
set autoindent  " align the new line indent with the previous line

set tabstop=4       " a hard TAB displays as 4 columns. Insert 4 columns if expandtab
set shiftwidth=4    " >> indents 4 columns; << unindents 4 columns
set softtabstop=0   " insert/delete 4 spaces when hitting a TAB/BACKSPACE

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=0
au FileType javascript,html,css setl ts=2 sw=2 sts=0

autocmd BufWritePre *.py :%s/\s\+$//e

" Enable folding
set foldmethod=indent
set foldlevel=10


" REMAP
" Enable folding with the spacebar
nnoremap <space> za

" Remove arrow keys
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>
" noremap <Up> <Nop>

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
