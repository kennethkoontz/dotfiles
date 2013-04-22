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
Bundle 'msanders/snipmate.vim'
Bundle 'tmhedberg/SimpylFold'
Bundle 'AutoClose'
Bundle 'git://git.wincent.com/command-t.git'

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2
if has('gui_running')
	set guifont=Ubuntu\ Mono\ for\ Powerline:h16
endif

set incsearch

filetype plugin on
set tabstop=2
set shiftwidth=2
set noexpandtab

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <Leader>n :NERDTreeToggle<CR>

imap ii <Esc> 

set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set smartindent

set foldmethod=syntax
let javaScript_fold=1

let g:SimpylFold_docstring_preview = 1

syntax enable
set background=dark
colorscheme solarized

let NERDTreeShowHidden=1
