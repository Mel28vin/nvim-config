"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

source $HOME/.config/nvim/settings/vim/plugins.vim
source $HOME/.config/nvim/settings/vim/sets.vim

luafile ~/.config/nvim/settings/lspServers.lua
luafile ~/.config/nvim/settings/treeSitter.lua
luafile ~/.config/nvim/settings/efm-server.lua
luafile ~/.config/nvim/settings/auto-pairs.lua
"luafile ~/.config/nvim/settings/indent-blankline.lua

let mapleader = " "
let maplocalleader = "\\"
let g:rustfmt_autosave = 1

nnoremap <Tab> :bnext <CR>

source $HOME/.config/nvim/settings/vim/colorScheme.vim
source $HOME/.config/nvim/settings/vim/signify.vim
source $HOME/.config/nvim/settings/vim/floatermExec.vim
source $HOME/.config/nvim/settings/vim/commentary.vim
source $HOME/.config/nvim/settings/vim/startify.vim
source $HOME/.config/nvim/settings/vim/kite.vim
source $HOME/.config/nvim/settings/vim/airline.vim
source $HOME/.config/nvim/settings/vim/fzfRg.vim
source $HOME/.config/nvim/settings/vim/telescopeConfig.vim
source $HOME/.config/nvim/settings/vim/lspconfig.vim
source $HOME/.config/nvim/settings/vim/netrw.vim
"source $HOME/.config/nvim/settings/vim/nvim_tree.vim

"Weird_Commands_to_be_fast

command! WQ wq
command! Wq wq
command! W  w
command! Q  q


"Trim_Whitespace

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun


augroup THE_MEL28
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.js,*.ts,*.jsx,*.rs lua vim.lsp.buf.formatting_sync(nil, 100)
    autocmd BufWritePre *.py lua vim.lsp.buf.formatting()
    " autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
" \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
augroup END
