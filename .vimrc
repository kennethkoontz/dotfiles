set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Bundle 'ludovicchabant/vim-lawrencium'
Bundle 'majutsushi/tagbar'
Bundle 'marijnh/tern_for_vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'davidhalter/jedi-vim'

call vundle#end()
" vundle requires ft off when loading, turn back on when finished
filetype plugin indent on

if has("gui_running")
	set guifont=Ubuntu\ Mono\ 12
	set guioptions-=T
endif

set laststatus=2

set wildignore+=node_modules,*.rdb
set incsearch

" indent
set smartindent 

" line numbers
set number

let NERDTreeShowHidden=1

" make styles files look like html
autocmd BufNewFile,BufRead *.styles,*.style set filetype=html

" custom mappings
let mapleader=","
imap jj <Esc> 
nmap <leader>1 :NERDTreeToggle<CR>
nmap <leader>2 :TagbarToggle<CR>
map <Leader>a :Ack 

" solarized settings
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" folding
let b:javaScript_fold=1
let g:SimpylFold_docstring_preview = 1
autocmd Syntax javascript setlocal foldmethod=syntax
autocmd Syntax python,javascript normal zR

" powerline settings
" let g:airline_powerline_fonts = 1

" ctrl p settings
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.?(git|hg|svn|venv|dist)$',
	\ 'file': '\v\.(pyc|so|gif|jpg|png)$',
	\ }

" for some reason in mac osx delete button wasn't working properly - this
" fixes it
:set backspace=indent,eol,start
