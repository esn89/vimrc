set laststatus=2
set statusline=
set statusline+=%7*\ %{g:currentmode[mode()]}
set statusline+=%7*\
set statusline+=%7*\ %{GitBranch()}
set statusline+=\ %#Blanks#
set statusline+=%7*
set statusline+=\ \ %f
set statusline+=%(%m%)
set statusline+=%7*\%=
set statusline+=%7*\ 
set statusline+=\ \ %l/%L
set statusline+=\ 
set statusline+=\ %c
hi StatusLine guifg=#697098 guibg=#292D3E
hi StatusLineNC guifg=#292D3E guibg=#292D3E
" Palenight Dark
hi User1 guifg=#474B59 guibg=#FBF1C7
"Cyan
hi User2 guifg=#474B59 guibg=#89DDFF
"Magenta
hi User3 guifg=#474B59 guibg=#C792EA
"Normal
hi User4 guifg=#474B59 guibg=#BFC7D5
"For git
hi User5 guifg=#FBF1C7 guibg=#665C54
" For pill background and fg
hi User6 guifg=#3E4452 guibg=bg
hi User7 guifg=#697098 guibg=#292D3E
let g:currentmode={
			\'n'  : '  NORMAL ',
			\'no' : 'N·OPERATOR PENDING ',
			\'v'  : '  VISUAL ',
			\'V'  : '  V·LINE ',
			\'' : '  V·BLOCK ',
			\'s'  : 'SELECT ',
			\'S'  : 'S·LINE ',
			\'' : 'S·BLOCK ',
			\'i'  : '  INSERT ',
			\'R'  : 'REPLACE ',
			\'Rv' : 'V·REPLACE ',
			\'c'  : '  COMMAND ',
			\'cv' : 'VIM EX ',
			\'ce' : 'EX ',
			\'r'  : 'PROMPT ',
			\'rm' : 'MORE ',
			\'r?' : 'CONFIRM ',
			\'!'  : 'SHELL ',
			\'t'  : 'TERMINAL '}

function! GitBranch()
	return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
