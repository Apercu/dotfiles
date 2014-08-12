" ============================================================================ "
"                                                                              "
" ---------                           .vimrc                           ------- "
"                                                                          1.0 "
" ============================================================================ "

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'lukaszb/vim-web-indent'
Plugin 'digitaltoad/vim-jade'

call vundle#end()
filetype plugin indent on

syntax enable
set background=dark
colorscheme solarized

syntax on
set expandtab
set nowrap
set shiftwidth=2
set tabstop=2
set sidescrolloff=15
set colorcolumn=80
set noswapfile
set nobackup
set nowb
set hidden
set autoread
set visualbell
set t_Co=256
set cursorline
set hlsearch
set wildmenu
set number
set ruler
set scrolloff=8
set sidescroll=1

set wildmode=longest,full
set wildignore=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

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
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8

command Sp set paste
command Np set nopaste

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<shift><tab>"
