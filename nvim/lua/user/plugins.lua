local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-lua/popup.nvim"
  use 'tpope/vim-vinegar'

  use {
      "luukvbaal/nnn.nvim"
  }

  use {
	  'kyazdani42/nvim-web-devicons'
  }

  use {
	  'projekt0n/github-nvim-theme'
  }

  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'projekt0n/github-nvim-theme' }
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }


  use {
      'numToStr/Comment.nvim'
  }

  use {
      'windwp/nvim-autopairs'
  }

  use {
      'ray-x/go.nvim',
      requires = { { 'ray-x/guihua.lua' } }
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          { 'neovim/nvim-lspconfig' },
          { 'williamboman/mason.nvim' },
          { 'williamboman/mason-lspconfig.nvim' },

          -- Autocompletion
          { 'hrsh7th/nvim-cmp' },
          { 'hrsh7th/cmp-nvim-lsp' },
          { 'hrsh7th/cmp-buffer' },
          { 'hrsh7th/cmp-path' },
          { 'saadparwaiz1/cmp_luasnip' },
          { 'hrsh7th/cmp-nvim-lua' },
          { 'onsails/lspkind.nvim' },
          { 'hrsh7th/cmp-cmdline' },

          -- Snippets
          { 'L3MON4D3/LuaSnip' },
          { 'rafamadriz/friendly-snippets' },
      }
  }

  use 'j-hui/fidget.nvim'

  use {
      'simrat39/rust-tools.nvim'
  }

  use {
      'lewis6991/gitsigns.nvim'
  }

  use({
      "kylechui/nvim-surround",
      tag = "*",
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
