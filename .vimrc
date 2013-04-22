set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'digitaltoad/vim-jade'
Bundle 'msanders/snipmate'
Bundle 'AutoClose'
Bundle 'git://git.wincent.com/command-t.git'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
if has('gui_running')
	set guifont=Ubuntu\ Mono\ for\ Powerline:h16
endif

set incsearch

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>n :NERDTreeToggle<CR>

set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set smartindent

set foldmethod=syntax
let javaScript_fold=1

syntax enable
set background=dark
colorscheme solarized

let NERDTreeShowHidden=1
