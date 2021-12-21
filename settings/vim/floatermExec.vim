" Floaterm
let g:floaterm_keymap_kill = '<F10>'
inoremap <silent> <F8> <Esc> :FloatermToggle<CR>
nnoremap <silent> <F8> :FloatermToggle<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermToggle<CR>

"Running_Console_Programs --> .c , .cpp, .py

autocmd FileType python nnoremap <buffer> <F9> :w<CR>:FloatermNew! python3.9 %<CR>
autocmd FileType python inoremap <buffer> <F9> <esc>:w<CR>:FloatermNew! python3.9 %<CR>

autocmd filetype c nnoremap <buffer> <F9> :w <CR>:FloatermNew --autoclose=0 gcc -std=c11 -O2 -Wall -Wno-unused-result % -o %< && ./%<<CR>
autocmd filetype c inoremap <buffer> <F9> <esc> :w <CR>:FloatermNew --autoclose=0 gcc -std=c11 -O2 -Wall -Wno-unused-result % -o %< && ./%<<CR>

autocmd filetype cpp nnoremap <buffer> <F9> :w<CR>:FloatermNew --autoclose=0 g++ -std=c++14 -O2 -Wall % -o %< && ./%<<CR>
autocmd filetype cpp inoremap <buffer> <F9> <esc> :w<CR>:FloatermNew --autoclose=0 g++ -std=c++14 -O2 -Wall % -o %< && ./%<<CR>

autocmd filetype typescript nnoremap <buffer> <F9> :w<CR>:FloatermNew --autoclose=0 ts-node %<CR>
autocmd filetype typescript inoremap <buffer> <F9> <esc> :w<CR>:FloatermNew --autoclose=0 ts-node %<CR>

autocmd filetype javascript inoremap <buffer> <F9> <esc> :w<CR>:FloatermNew --autoclose=0 node %<CR>
autocmd filetype javascript nnoremap <buffer> <F9> :w<CR>:FloatermNew --autoclose=0 node %<CR>



"C_Programming_Template

nnoremap <space>t :-1read $HOME/Coding/CP/Templates/template.c<CR>/{<CR>o
