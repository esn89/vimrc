set nocompatible
syntax on
set modelines=0
"
" Turns on line numbers:
set number
set encoding=utf-8

" My default indentation settings "
set autoindent
set smartindent
set wrap
set linebreak
set nolist

" No annoying sound on errors:
set noerrorbells

" No annoying visual errors either:
set novisualbell

" Searching is case insensitive:
set ignorecase

set hlsearch

" set incsearch
set inccommand=split

" Do smart case matching
set smartcase

" Sets the paste togle button to F2
set pastetoggle=<Leader>a

" Jump to the last position when reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Automatically remove trailing white space
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Turn off the start up message
set shortmess+=I

" Hide the default mode text before the statusline
set noshowmode

" Change the backspace so it acts as it should
set backspace=eol,start,indent
set ft=c
set fo+=c
set tw=0

" Allows me to do :Q! as well as :q
command -bang Q quit<bang>

" No Swap files:
set noswapfile

"set completeopt=menu,menuone
set completeopt=longest,menuone

" Mouse settings
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" These two commands speed vim up a bit
let g:loaded_matchparen=0
set lazyredraw

set splitbelow
set splitright

" Make the switch from modes have no delay
set ttimeoutlen=0
