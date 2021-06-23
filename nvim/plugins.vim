call plug#begin('~/.config/nvim/plugged')

"General
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'easymotion/vim-easymotion'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jiangmiao/auto-pairs'

"C++
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rhysd/vim-clang-format'

"JS/TS
Plug 'prettier/vim-prettier'

"LSP
Plug 'neovim/nvim-lspconfig'

"Theme
Plug 'folke/tokyonight.nvim', {'branch': 'main'}
Plug 'shaunsingh/solarized.nvim'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Nvim tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

"Compe
Plug 'hrsh7th/nvim-compe'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

