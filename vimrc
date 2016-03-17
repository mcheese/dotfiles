""" Plugin Manager """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

""" Bundles """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocomplete with <TAB>
Bundle 'ervandew/supertab'
" better textbased autocompletion
Bundle 'Shougo/neocomplete.vim'
" status bar at the bottom
Bundle 'bling/vim-airline'
" quoting and parenthesizing made simple
Bundle 'tpope/vim-surround'

""" Real Config """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "
inoremap jj <ESC>

nnoremap <silent><leader>n :set relativenumber!<cr>
set relativenumber

autocmd CompleteDone * pclose   " Auto close preview window

" Umlaute
inoremap <C-l>[ <Char-252><cr><cr><cr><cr><cr>
inoremap <C-l>{ <Char-220><cr>

inoremap <C-l>' <Char-228><cr><cr>
inoremap <C-l>" <Char-196><cr>

inoremap <C-l>; <Char-246><cr><cr><cr>
inoremap <C-l>: <Char-214><cr>

inoremap <C-l>- <Char-223><cr>

" Split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
" Tabs
nnoremap <silent><leader>l :tabnext<CR>
nnoremap <silent><leader>h :tabprevious<CR>

filetype plugin indent on
syntax on
scriptencoding utf-8
set number
set numberwidth=5
set encoding=utf-8
set backspace=2
set so=5
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list listchars=tab:»·,trail:·,nbsp:·
set textwidth=80
set colorcolumn=+1

