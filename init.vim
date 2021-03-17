"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

source $HOME/.config/nvim/settings/vim/plugins.vim
source $HOME/.config/nvim/settings/vim/sets.vim

luafile ~/.config/nvim/settings/lspServers.lua
luafile ~/.config/nvim/settings/treeSitter.lua

let mapleader = " "
let maplocalleader = "\\"

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
    autocmd BufWritePre *.js,*.ts,*.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
    "autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
augroup END
