local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.pyright.setup{}
nvim_lsp.tsserver.setup{}
nvim_lsp.clangd.setup{}
nvim_lsp.dartls.setup{{on_attach=on_attach,}}

nvim_lsp.rust_analyzer.setup({on_attach=on_attach,})
