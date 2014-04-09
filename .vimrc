" ============================================================================ "
"                                                                              "
" ---------                           .vimrc                           ------- "
"                                                                          1.0 "
" ============================================================================ "

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'

syntax enable
set background=dark
colorscheme solarized

filetype plugin indent on
syntax on

set colorcolumn=80
set softtabstop=4
set tabstop=4
set t_Co=256
set wildmode=longest,full
set cursorline
set hlsearch
set wildmenu
set smarttab
set nowrap
set number
set ruler
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

au Bufenter *.c set comments=sl:/*,mb:**,elx:*/
au Bufenter *.h set comments=sl:/*,mb:**,elx:*/

autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=1
set guifont=Menlo\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let NERDTreeMinimalUI=1
let NERDTreeCasadeOpenSingleChildDir=1
set modifiable
