" Plugin Manager """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

""" Bundles """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'

""" Real Config """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "
inoremap jk <ESC>
inoremap kj <ESC>

nnoremap <silent><leader>n :set relativenumber!<cr>
set relativenumber

autocmd CompleteDone * pclose   " Auto close preview window

"format
map <C-K> :pyf /usr/bin/clang-format.py<cr>
"imap <C-K> <c-o>:pyf /usr/bin/clang-format.py<cr>

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](build)$' }

let g:airline_powerline_fonts = 1

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
nnoremap <leader>o :tabnext<CR>
nnoremap <leader>i :tabprevious<CR>

nnoremap <leader>e :NERDTreeToggle<CR>

" Remove input mode :A mapping
autocmd VimEnter * iunmap <leader>ih
autocmd VimEnter * iunmap <leader>is
autocmd VimEnter * iunmap <leader>ihn

filetype plugin indent on
syntax on
scriptencoding utf-8
set mouse=a
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
set nohlsearch
set clipboard=unnamed
set cursorline

colorscheme solarized
set background=dark
hi Normal ctermbg=NONE
hi SpellBad ctermbg=NONE ctermfg=NONE cterm=underline

