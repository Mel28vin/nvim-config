" LSP config (the mappings used in the default file don't quite work right)

fun! Stuff()
    let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
    set completeopt=menuone,noinsert,noselect
    set shortmess+=c
    imap <Tab> <Plug>(completion_smart_tab)
    imap <S-Tab> <Plug>(completion_smart_s_tab)
endfun

autocmd FileType rust,dart call Stuff()
" autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
" autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = ' > ', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"}, only_current_line = true }

nnoremap <Leader>T :lua require'lsp_extensions'.inlay_hints()
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
"nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
"nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
