-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  

  --Colorscheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use 'sainnhe/sonokai'
  use 'folke/tokyonight.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use "rebelot/kanagawa.nvim"



  use { "catppuccin/nvim", as = "catppuccin" }
  vim.cmd('colorscheme tokyonight')
  
  --Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  
  --harpoon
  use('theprimeagen/harpoon')
  
  --UndoTree
  use('mbbill/undotree')
  
  --Fugitive
  use('tpope/vim-fugitive')
  
  --lsp Zero

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}

    --Formatter
    use('sbdchd/neoformat')
    

    --TMUX NVIM PLUGIN
    use('christoomey/vim-tmux-navigator')
    
    --vim LaTeX plugin
    use 'lervag/vimtex'


    -- Commenter thing
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
        }




end)

