" yaml indentation
au FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2

" Set cpp type properties:
autocmd Filetype cpp setlocal ts=8 sts=8 sw=8

" Set python file type properties:
autocmd Filetype python setlocal ts=4 sts=4 sw=4 textwidth=80 colorcolumn=80 smarttab expandtab smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" For Makefiles
autocmd FileType make set noexpandtab
highlight Directory guifg=#FFFFFF ctermfg=red
