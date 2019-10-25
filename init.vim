if has("syntax")
	syntax on
endif

call plug#begin('/Users/evanng/.config/nvim/plugged')
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'drewtempelmeyer/palenight.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
call plug#end()

filetype plugin indent on
set t_Co=256
set background=dark
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
" let g:gruvbox_contrast_dark = "hard"
" let g:gruvbox_bold = 1
" let g:gruvbox_italic = 1
" let g:gruvbox_underline = 1
" let g:gruvbox_undercurl = 1
" let g:gruvbox_contrast_light = "soft"
" let g:gruvbox_italicize_comments = 1
" let g:gruvbox_sign_column = "bg0"

set termguicolors
colorscheme palenight

" Sources other files, this order and placement must not change
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/behaviour.vim
source ~/.config/nvim/statusline.vim
source ~/.config/nvim/filetypesettings.vim
source ~/.config/nvim/coc.vim

" Function to pull lines from other files
function! s:GetFromFile(...)
	execute 'r! sed -n '. a:1 .','. a:2 .'p '. a:3
endf
command -nargs=+ -complete=file GetFromFile call s:GetFromFile(<f-args>)

" Advanced customization using autoload functions:
autocmd VimEnter * command! Colors
  \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Removes String Background Color:
highlight String ctermbg=none guibg=none

" Hides that ugly tilda
highlight EndOfBuffer guifg=bg

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:terraform_align = 1
let g:terraform_fmt_on_save = 1

" let g:nerdtreewinsize = 37
" let g:nerdtreestatusline = " ⮡  "
" let g:nerdtreeshowfiles = 1
" let g:nerdtreechdirmode = 2
" let g:nerdtreeminimalui = 1
" let g:nerdtreedirarrowexpandable=""
" let g:nerdtreedirarrowcollapsible=""
" let g:nerdtreedirarrowexpandable=""
" let g:nerdtreedirarrowcollapsible=""
" highlight nerdtreeopenable guifg=#ebdbb2
" highlight nerdtreeclosable guifg=#fe8019
" highlight nerdtreedir guifg=#83a598
" highlight nerdtreecwd guifg=#3c3836 guibg=#a89984

" augroup nerdtreehidecwd
" 	autocmd!
" 	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
" augroup end
"
" augroup nerdtreehidecwdpref
" 	autocmd!
" 	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeCWD #^[</].*$# containedin=NERDTreeDir conceal contained
" augroup end
