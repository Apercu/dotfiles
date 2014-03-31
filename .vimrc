" ============================================================================ "

" ---------                                                            ------- "
" 42Purpose                      perfect-start                         2014-01 "
" ---------                        .ps-vimrc                           ------- "

" ============================================================================ "

" Plugins
" --------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'SirVer/ultisnips'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'meriadec/vim-web-indent'
Bundle 'digitaltoad/vim-jade'
Bundle 'msanders/snipmate.vim'

" Style
" -----
colorscheme solarized
filetype plugin indent on
set background=dark
syntax on
set colorcolumn=80
set softtabstop=4
set tabstop=4
set t_Co=256
set wildmode=list:longest
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

" Norme
" -----
au Bufenter *.c set comments=sl:/*,mb:**,elx:*/
au Bufenter *.h set comments=sl:/*,mb:**,elx:*/
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd FileType html,css setlocal shiftwidth=2 tabstop=2

" UltiSnips
" ---------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
