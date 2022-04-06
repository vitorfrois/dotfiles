" VIM CONFIG!!

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" number lines
set number
set tabstop=4

" plugin 
call plug#begin('~/.vim/plugged')

" airline theme
let g:airline_theme='base16_gruvbox_dark_hard'
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000

map j <Left>
map ç <Right>
map k <Down>
map l <Up>
noremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'

call vundle#end()            " required
filetype plugin indent on    " required
