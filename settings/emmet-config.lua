local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'

local on_attach = function(client)
    require'completion'.on_attach(client)
end
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not lspconfig.emmet_ls then
  configs.emmet_ls = {
    default_config = {
      cmd = {'emmet-ls', '--stdio'};
      filetypes = {'html', 'css', 'blade'};
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end
lspconfig.emmet_ls.setup{ capabilities = capabilities, on_attach=on_attach }
require'lspconfig'.html.setup {
  capabilities = capabilities,
}
