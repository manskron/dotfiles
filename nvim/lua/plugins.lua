local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()

  --general
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-dispatch'
  use 'easymotion/vim-easymotion'
  use 'christoomey/vim-tmux-navigator'
  use 'jiangmiao/auto-pairs'

  --ts
  use 'prettier/vim-prettier'

  --lsp
  use 'neovim/nvim-lspconfig'

  --theme
  use 'projekt0n/github-nvim-theme'

  --Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  --Nvim tree
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  --Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  --completion
  use 'hrsh7th/nvim-compe'

end)
