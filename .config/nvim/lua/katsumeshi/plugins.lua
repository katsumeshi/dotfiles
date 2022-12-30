local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
	use('wbthomason/packer.nvim')

  -- fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  -- color scheme
  use("EdenEast/nightfox.nvim" )

	use('neovim/nvim-lspconfig')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-lualine/lualine.nvim')
	use('kyazdani42/nvim-web-devicons')
  use('christoomey/vim-tmux-navigator')

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'nvim-tree/nvim-tree.lua'
  }

  if packer_bootstrap then
    require('packer').sync()
  end

end)
