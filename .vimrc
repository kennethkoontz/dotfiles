set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'digitaltoad/vim-jade'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'msanders/snipmate.vim'
Bundle 'tmhedberg/SimpylFold'
Bundle 'Townk/vim-autoclose'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
" Bundle 'andviro/flake8-vim'
Bundle 'ludovicchabant/vim-lawrencium'
Bundle 'majutsushi/tagbar'
Bundle 'marijnh/tern_for_vim'
Bundle 'christoomey/vim-tmux-navigator'

if has("gui_running")
	set guifont=Ubuntu\ Mono\ 12
	set guioptions-=T
endif

let g:PyFlakeOnWrite = 1

set laststatus=2

set wildignore+=node_modules,*.rdb
set incsearch

filetype plugin on

map <Leader>n :NERDTreeToggle<CR>
map <Leader>a :Ack 

imap jj <Esc> 

set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set smartindent

set foldmethod=syntax

let b:javaScript_fold=1

let g:SimpylFold_docstring_preview = 1

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:airline_powerline_fonts = 1

" tags
set tags=~/tags
set tags=~/tags.js

let NERDTreeShowHidden=1

let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.?(git|hg|svn|venv|dist)$',
	\ 'file': '\v\.(pyc|so|gif|jpg|png)$',
	\ }

au BufNewFile,BufRead *.styles,*.style set filetype=html
