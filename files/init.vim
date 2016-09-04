" ============================================================================ "
"                                                                              "
" ---------                           .vimrc                           ------- "
"                                                                              "
" ============================================================================ "


" -- Mapping {
" ==========

  let mapleader=","

  nnoremap <Space> <NOP>
  nmap <silent> <Space>h :wincmd h<CR>
  nmap <silent> <Space>t :wincmd j<CR>
  nmap <silent> <Space>n :wincmd k<CR>
  nmap <silent> <Space>s :wincmd l<CR>

  " search for visually selected text by pressing //
  vnoremap // y/<C-R>"<CR>"

  " smart paste
  nnoremap t p=`]
  nnoremap <S-t> <S-p>=`]

" }


" -- Plugins {
" ==========

  filetype off

  call plug#begin('~/.vim/plugged')

  Plug 'itchyny/lightline.vim'
  Plug 'chriskempson/base16-vim'
  Plug 'Raimondi/delimitMate'
  Plug 'pangloss/vim-javascript'
  Plug 'SirVer/ultisnips'
  Plug '42Zavattas/vim-snippets', { 'branch': 'develop' }
  Plug 'airblade/vim-gitgutter'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'mxw/vim-jsx'
  Plug 'neomake/neomake'

  call plug#end()
  filetype plugin indent on

" }


" -- Aliases {
" ==========

  command Sp set paste
  command Np set nopaste

" }


" -- Display {
" ==========

  " Need explanation ?
  syntax on

  " The chosen one
  colorscheme base16-ocean
  set background=dark

  set mouse=c

  " Encoding, etc.
  set encoding=utf-8
  set termencoding=utf-8

  " Correct strange bug
  set backspace=indent,eol,start

  " Insert space characters whenever <tab> is pressed
  set expandtab

  " Number of spaces inserted when hitting <tab>
  set tabstop=2

  " Number of spaces inserted when using :retab
  set shiftwidth=2

  " Don't wrap long lines
  set nowrap

  " Always show status bar
  set laststatus=2

  " Number of lines to keep above & below cursor when scrolling
  set sidescrolloff=15
  set sidescroll=1
  " set scrolloff=8

  " Auto reload files when changed
  set autoread

  " Show the 80 chars column
  " set colorcolumn=80

  " Don't create useless files
  set noswapfile
  set nobackup
  set nowb

  " Hide unsaved buffers
  set hidden

  " Show cursor line
  " set cursorline

  " Move on search
  set incsearch

  " Show line numbers
  set number

  " Show infos in status bar
  set ruler

  " Prevent annoying highlight on search
  set nohlsearch

  " More intelligent searches
  set ignorecase
  set smartcase

  " Never use Ex useless mode
  nnoremap Q <ESC>

  " Show blank characters
  set listchars=tab:>-,trail:·,nbsp:%
  set list

  " Transparent bg <3
  hi Normal ctermbg=NONE

" }

" -- Opening tab completion {
" =========================

  set wildmode=longest,full
  set wildignore=*.o,*.obj,*~
  set wildignore+=*sass-cache*
  set wildignore+=*DS_Store*
  set wildignore+=*node_modules*
  set wildignore+=*ios/*
  set wildignore+=*android/*
  set wildignore+=*bower_components*
  set wildignore+=*plugins*
  set wildignore+=*platforms*
  set wildignore+=*release*
  set wildignore+=*dist*,*dist-server*,*lib*
  set wildmenu

" }


" -- Visual helpers {
" =================

  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/

  autocmd! BufWinEnter * Neomake
  autocmd! BufWritePost * Neomake
  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
  autocmd VimResized * :wincmd =

  " disable xml different color for closing tag
  highlight link xmlEndTag xmlTag

" }

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']


" -- Lightline {
" ============

  let g:lightline = {
  \   'colorscheme': 'jellybeans',
  \   'active': {
  \     'left': [ [ 'mode', 'paste' ], [ 'readonly', 'relativepath', 'modified' ] ],
  \     'right': [ [ 'lineinfo' ] ]
  \    },
  \   'inactive': {
  \     'left': [ ['relativepath' ] ],
  \     'right': []
  \    },
  \ }

" }


" -- Ultisnips {
" ============

  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" }


" -- Vim JSX {
" ==========

  let g:jsx_ext_required = 0

" }
