vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'Mofiqul/dracula.nvim'

 use {  -- Add Gruvbox here
        "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox").setup({
                contrast = "hard",
            })
        end
    }
    -- Telescope Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Treesitter (Syntax highlighting)
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'

  -- Harpoon (quick nav)
  use 'ThePrimeagen/harpoon'

  -- Undo tree
  use 'mbbill/undotree'

  -- Git commands
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Auto pairs
  use {
    'windwp/nvim-autopairs',
    config = function()
      require("nvim-autopairs").setup({})
    end
  }

  -- Indent lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { theme = 'dracula' }
      }
    end
  }

  -- LSP Zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim', run = function() pcall(vim.cmd, 'MasonUpdate') end },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' }
    }
  }
end)

