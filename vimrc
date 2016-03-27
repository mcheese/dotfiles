" Plugin Manager """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

""" Bundles """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status bar at the bottom
Bundle 'bling/vim-airline'
" quoting and parenthesizing made simple
Bundle 'tpope/vim-surround'
" completion
Bundle 'Valloric/YouCompleteMe'
" generate completion config
Bundle 'rdnetto/YCM-Generator'
" file browser
Bundle "scrooloose/nerdtree"
" doxygen
Bundle "vim-scripts/DoxygenToolkit.vim"

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

"format
map <C-K> :pyf /usr/bin/clang-format.py<cr>
imap <C-K> <c-o>:pyf /usr/bin/clang-format.py<cr>

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

nnoremap <silent><leader>g :YcmCompleter GoTo<cr>
nnoremap <silent><leader>t :YcmCompleter GetType<cr>

" Split
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>
set splitbelow
set splitright
" Tabs
nnoremap <silent><leader>o :tabnext<CR>
nnoremap <silent><leader>i :tabprevious<CR>

nnoremap <silent><leader>e :NERDTreeToggle<CR>

filetype plugin indent on
syntax on
scriptencoding utf-8
set clipboard=unnamedplus
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
set term=xterm-256color
highlight ColorColumn ctermbg=darkgrey

