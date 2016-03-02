" ============================================================================ "
"                                                                              "
" ---------                           .vimrc                           ------- "
"                                                                              "
" ============================================================================ "


" -- Mapping {
" ==========

  nnoremap <Space> <NOP>
  nmap <silent> <Space>h :wincmd h<CR>
  nmap <silent> <Space>t :wincmd j<CR>
  nmap <silent> <Space>n :wincmd k<CR>
  nmap <silent> <Space>s :wincmd l<CR>
  vnoremap // y/<C-R>"<CR>"
  let mapleader=","

" }


" -- Plugins {
" ==========

  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  Plugin 'itchyny/lightline.vim'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'Raimondi/delimitMate'
  Plugin 'pangloss/vim-javascript'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'mtscout6/vim-cjsx'
  Plugin 'SirVer/ultisnips'
  Plugin '42Zavattas/vim-snippets'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'easymotion/vim-easymotion'

  call vundle#end()
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
  colorscheme solarized
  set background=dark

  " Encoding, etc.
  set encoding=utf-8
  set termencoding=utf-8
  set t_Co=256

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
  set scrolloff=8

  " Auto reload files when changed
  set autoread

  " Show the 80 chars column
  set colorcolumn=80

  " Don't create useless files
  set noswapfile
  set nobackup
  set nowb

  " Hide unsaved buffers
  set hidden

  " Show cursor line
  set cursorline

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
  set wildignore+=*dist*
  set wildmenu

" }


" -- Visual helpers {
" =================

  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/

  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
  autocmd VimResized * :wincmd =

" }


" -- Lightline {
" ============

  let g:lightline = {
  \   'colorscheme': 'solarized_dark'
  \ }

" }


" -- Ultisnips {
" ============

  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" }
