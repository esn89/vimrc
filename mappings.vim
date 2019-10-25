" Follow the leader:
let mapleader = "\<Space>"

" Turns off F1 as the help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>t :tabnew<CR>

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-w>v :vsplit<CR>
nnoremap <C-w>s :split<CR>

" F5 to toggle NERDTree (no NERDTree challenge)
" map <F5> :NERDTreeToggle<CR>

" Spaces out var=a to var = a:
nnoremap <leader>= :s/\(\w\+\)=\(\w\+\)/\1 = \2/g<CR>

"nnoremap <Leader>cf :Currfind<CR>
" nnoremap <silent> <expr> <Leader>cf (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Currfind\<cr>"
" nnoremap <Leader>o :Files<CR>
" nnoremap <silent> <expr> <Leader>o (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
"nnoremap <Leader>f :Find<CR>
" nnoremap <silent> <expr> <Leader>f (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Find\<cr>"
nnoremap <Leader>a :Ag<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>k :lprevious<CR>
nnoremap <Leader>v :PlugUpdate<CR>

" Copy & paste to & from system clipboard with <Space>y &
" <Space>p (must compile vim with +xclipboard)
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Automatically jump to the end of the text you pasted:
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Go to line number without having to shift+g
nnoremap <CR> G
nnoremap <BS> gg

" Uses <Leader>u for commenting blocks of code
" The entire chunk from 62 - 82 does that"
nnoremap <Leader>u :<c-u>.,.+<c-r>=v:count<cr>call <SID>toggleComment()<cr>
nnoremap <Leader>u :<c-u>set opfunc=<SID>commentOp<cr>g@
xnoremap <Leader>u :call <SID>toggleComment()<cr>

function! s:commentOp(...)
  '[,']call s:toggleComment()
endfunction

function! s:toggleComment() range
  let comment = substitute(get(b:, 'commentstring', &commentstring), '\s*\(%s\)\s*', '%s', '')
  let pattern = '\V' . printf(escape(comment, '\'), '\(\s\{-}\)\s\(\S\.\{-}\)\s\=')
  let replace = '\1\2'
  if getline('.') !~ pattern
    let indent = matchstr(getline('.'), '^\s*')
    let pattern = '^' . indent . '\zs\(\s*\)\(\S.*\)'
    let replace = printf(comment, '\1 \2' . (comment =~ '%s$' ? '' : ' '))
  endif
  for lnum in range(a:firstline, a:lastline)
    call setline(lnum, substitute(getline(lnum), pattern, replace, ''))
  endfor
endfunction
"""

" Sets F3 to cancel the highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Alt to move lines up and down:
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1<CR>==
inoremap <A-k> <Esc>:m .-2<CR>==gi
inoremap <A-j> <Esc>:m .+1<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <Leader>o :CocList files<CR>
nnoremap <Leader>f :CocList grep<CR>
nnoremap <Leader>b :CocList buffers<CR>
nnoremap <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>
