require'nvim-treesitter.configs'.setup {
  ensure_installed = {"bash", "c", "c_sharp", "dart", "cpp", "css", "go", "java", "html", "javascript", "json", "jsonc", "julia", "kotlin", "rust", "lua", "python", "typescript"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = { "erlang", "nix", "devicetree", "gdscript", "ocamllex", "teal", "ledger", "supercolider", "sparql", "graphql", "turtle" },  -- list of language that will be disabled
  },
}
