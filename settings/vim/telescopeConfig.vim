" Telescope
" Using lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>gc :lua require('files.telescope').git_branches()<CR>
nnoremap <leader>vrc :lua require('files.telescope').search_dotfiles()<CR>
"nnoremap <C-p> :lua require('files.telescope').search_allfiles()<CR>

