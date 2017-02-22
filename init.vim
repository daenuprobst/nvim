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
Plug 'mhinz/vim-startify'
Plug 'notpratheek/vim-luna'
Plug 'maksimr/vim-jsbeautify'
" Get patched fonts: https://github.com/ryanoasis/nerd-fonts
Plug 'ryanoasis/vim-devicons'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'
" Plug 'valloric/youcompleteme', { 'do': './install.py' }
call plug#end()
set termguicolors
colorscheme luna 
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
let g:airline_theme='luna'
let g:airline_powerline_fonts=1

" Comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Clipboard
set clipboard+=unnamedplus

" JSDoc
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1
let g:jsdoc_additional_descriptions=0
let g:jsdoc_access_descriptions=0
let g:jsdoc_enable_es6=1

" Web beautifier
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_size = '4'
let g:config_Beautifier['js'].indent_char = ' '
let g:config_Beautifier['js'].space_before_conditional = 'true'
let g:config_Beautifier['js'].brace_style = 'collapse'
let g:config_Beautifier['js'].end_width_newline = 'true'
let g:config_Beautifier['js'].jslint_happy = 'true'
let g:config_Beautifier['js'].formaformat_on_save = 'true'
