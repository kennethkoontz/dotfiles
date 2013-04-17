set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'AutoClose'
Bundle 'git://git.wincent.com/command-t.git'

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set smartindent

set laststatus=2
set statusline=%F%r%h%w\ %y\ [%L\ lines]\ %m

set foldmethod=syntax
let javaScript_fold=1

syntax enable
set background=dark
colorscheme solarized
