call plug#begin('~/.local/share/nvim/plugged')
Plug 'sjl/badwolf'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries'}
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
" Plug 'valloric/youcompleteme', { 'do': './install.py' }
call plug#end()
set termguicolors
colorscheme badwolf
syntax enable
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smartindent
set autoindent

let s:tabwidth=4
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth

set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch

" Map leader
let mapleader=","

" Airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1

" Comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

