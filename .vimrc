" VIM Configuration - An Nguyen
set nocompatible	" No compability with VI

" Activate Pathogen
call pathogen#infect()

" -- Display
set title
set number
set ruler
set wrap

set scrolloff=3

" -- Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" -- Beep
set visualbell
set noerrorbells

" -- Backspace behave
set backspace=indent,eol,start

" -- Hide buffer instead of abandoning when switching to another buffer
set hidden

" -- Activate syntax color
syntax enable
filetype on
filetype plugin on
filetype indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" -- Colorscheme
set t_ut=
set t_Co=256
set background=dark
colorscheme bluish 

" -- Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop> 
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop> 

" -- Auto turn on NERD Tree
" autocmd vimenter * NERDTree 

" -- Leader key 
let mapleader = "," 

" -- Avoid Esc key 
imap jk <Esc> 

" Shortcut Key for Toggle Tag bar
nnoremap <silent> <Leader>b :TagbarToggle<CR> 

" Finding File
set path+=**
set wildmenu 

" File Browser netrw -> a plugins that comes with VIM
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Default params for Ack -> Function: Searching string in file within working
" Directory
"let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
"nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
"nmap <leader>ja mA:Ack "
"<C-r>=expand("<cword>")<cr>"
"nmap <leader>jA mA:Ack 
"<C-r>=expand("<cWORD>")<cr>"

" Activate CtrlP Plugin -> Function: Searching for file to open with VIM
"let g:ctrlp_map = '<leader>c' 

" YouCompleteMe Setup
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
