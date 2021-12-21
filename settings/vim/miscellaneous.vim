"QuickFix Lists Nav
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" nnoremap <C-t> :e Zsh<CR>:term zsh<CR>i
" tmap <Esc> <C-\><C-n>:bd!<CR>:bd<CR>
"Terminal :)
nnoremap <C-t> :term zsh<CR>i
tnoremap <Esc> <C-\><C-n>:bd!<CR>
tnoremap <Tab> <C-\><C-n>:bnext<CR>

" possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_trigger_character = ['.']
"Prettier
" let g:prettier#autoformat_require_pragma = 0
