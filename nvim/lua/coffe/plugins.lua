local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
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
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Plugins (:
return packer.startup(function(use)
  use { "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" } -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- Popup API
  use "nvim-lua/plenary.nvim" -- Dependency

  -- Theme
  use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use 'folke/tokyonight.nvim'


  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/mason.nvim" -- simple to use language server installer
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
	use { "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" } -- for formatters and linters

	-- Telescope
	use { "nvim-telescope/telescope.nvim" }

  use 'ethanholz/nvim-lastplace'

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  -- Icons
  use "kyazdani42/nvim-web-devicons"

  -- Window
  use "kyazdani42/nvim-tree.lua"
  
  -- Tab
  use "akinsho/bufferline.nvim"

  -- Session
  use "rmagatti/auto-session"


  -- Godot
  use "habamax/vim-godot"
  use "mhinz/neovim-remote"

  use 'ThePrimeagen/vim-be-good'

  -- use 'github/copilot.vim'

  use({
    "aurum77/live-server.nvim",
      run = function()
        require"live_server.util".install()
      end,
      cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  })

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
