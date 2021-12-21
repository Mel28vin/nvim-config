syntax on
filetype plugin indent on

"Colorscheme

set t_Co=256
if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
	set termguicolors
endif

colorscheme onedark
highlight Comment cterm=italic gui=italic
" highlight Normal guibg=none
"colorscheme jellybeans
"let g:jellybeans_use_term_italics = 1

