" Plugins!!!

call plug#begin('~/.config/nvim/plugged')

"Plug 'Raimondi/delimitMate'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'voldikss/vim-floaterm'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do':'TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'thosakwe/vim-flutter'
Plug 'windwp/nvim-autopairs'
"Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}
Plug 'mfussenegger/nvim-dap'

"Plug 'prettier/vim-prettier', { 'do': 'npm install' }
"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
"Plug 'bfrg/vim-cpp-modern'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'vim-python/python-syntax'
"Plug 'preservim/nerdtree'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()
