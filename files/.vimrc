" ============================================================================ "
"                                                                              "
" ---------                           .vimrc                           ------- "
"                                                                              "
" ============================================================================ "

" -- Plugins {
" ==========

  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

  Plugin 'gmarik/Vundle.vim'

  Plugin 'bling/vim-airline'
  Plugin 'tpope/vim-fugitive'
  Plugin 'hail2u/vim-css3-syntax'
  Plugin 'lukaszb/vim-web-indent'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'scrooloose/nerdtree'

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
  set term=xterm-256color

  " Insert space characters whenever <tab> is pressed
  set expandtab

  " Number of spaces inserted when hitting <tab>
  set tabstop=2

  " Number of spaces inserted when using :retab
  set shiftwidth=2

  " Don't wrap long lines
  set nowrap

  " Number of lines to keep above & below cursor when scrolling
  set sidescrolloff=15
  set sidescroll=1
  set scrolloff=8

  " Show the 80 chars column
  set colorcolumn=80

  " Don't create useless files
  set noswapfile
  set nobackup
  set nowb

  " Use unsaved buffers without
  set hidden

  " Auto-reload file if modified
  set autoread

  " Disable annoying sound
  set visualbell

  " Show cursor line
  set cursorline

  " Highlight search
  set hlsearch

  " Show line numbers
  set number

  " Show infos in status bar
  set ruler

  " Never use Ex useless mode
  nnoremap Q <ESC>

  " Show blank characters
  set listchars=tab:>-,extends:>,precedes:<
  set list

" }


" -- Opening tab completion {
" =========================

  set wildmode=longest,full
  set wildignore=*.o,*.obj,*~
  set wildignore+=*sass-cache*
  set wildignore+=*DS_Store*
  set wildmenu

" }


" -- Visual helpers {
" =================

  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/

  au Bufenter *.c set comments=sl:/*,mb:**,elx:*/
  au Bufenter *.h set comments=sl:/*,mb:**,elx:*/

  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()
  autocmd FileType html,css setlocal shiftwidth=2 tabstop=2

" }


" -- Vim Airline {
" ==============

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_powerline_fonts=1
  let g:Powerline_symbols = 'fancy'

  "let g:airline_powerline_fonts = 1
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.linenr = '¶'

" }


" -- Ultisnips {
" ============

  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<shift><tab>"

" }


" -- NerdTree {
" ===========

  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p

  let NERDTreeMinimalUI=1
  let NERDTreeCasadeOpenSingleChildDir=1
  set modifiable

  autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

  function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
        if winnr("$") == 1
          q
        endif
      endif
    endif
  endfunction

" }