" vim settings

" pathogen setup
filetype off " turn off for pathogen.
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set backspace=indent,eol,start " make backspace work.

" Filetype settings
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 textwidth=80 nowrap " python
au FileType javascript setlocal ts=4 sts=4 et sw=4 " javascript
au FileType sh setlocal shiftwidth=4 softtabstop=4 " bash 
au FileType jade setlocal sw=2 ts=2 sts=2 textwidth=0 " jade 
au FileType xml setlocal sw=2 ts=2 sts=2 textwidth=0 " xml 
au FileType html setlocal sw=2 ts=2 sts=2 textwidth=0 " html 
au FileType css setlocal sw=2 ts=2 sts=2 textwidth=79 " css 

set autoindent " indentation.

set nu " line numbers on.
syntax on " colored syntax on.
filetype on " try to detect filetypes.
filetype plugin indent on " enable loading indent file for filetype.

" for solarized colorscheme.
" let g:solarized_termcolors=256
set background=dark " background to dark.
colorscheme solarized " solarized colorscheme

" change to current directory.
autocmd BufEnter * silent! lcd %:p:h

" show status line.
set laststatus=2
set statusline=%F%r%h%w\ %y\ [%L\ lines]\ %m

" SimpylFold preview folding.
let g:SimpylFold_docstring_preview = 1

" keybindings.
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
nmap <F4> :w<CR>:make<CR>:cw<CR>
" remap esc key to ii
imap ii <Esc> 

" keybindings for folds
map <buffer> f za 
map <buffer> F :call ToggleFold()<CR> 

" set folds
set foldmethod=syntax

let javaScript_fold=1         " JavaScript

" run jshint on saving js file
autocmd BufWritePost,FileWritePost *.js :JSHint <afile>

" highlight searching 
set hlsearch
map <leader>c :nohlsearch<CR>

" relative numbering.
set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <c-n> :call NumberToggle()<cr>
