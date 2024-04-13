function get_setup(name)
   return string.format('require("setup/%s")', name)
end


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

return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'

   use "nvim-lua/plenary.nvim"

   use ({
      "hrsh7th/nvim-cmp",
      requires = {
         "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp",
         'quangnguyen30192/cmp-nvim-ultisnips', 'hrsh7th/cmp-nvim-lua',
         'octaltree/cmp-look', 'hrsh7th/cmp-path', 'hrsh7th/cmp-calc',
         'f3fora/cmp-spell', 'hrsh7th/cmp-emoji'
      },
      config = get_setup("cmp"),
   })
   
   use ({
      'nvim-tree/nvim-tree.lua',
      tag = 'nightly',
      config = get_setup("nvim-tree"),
   })

   use 'nvim-tree/nvim-web-devicons'
   use 'lewis6991/gitsigns.nvim'

   use ({
      'nvim-lualine/lualine.nvim',
      config = get_setup("lualine")
   })

   use ({
      'goolord/alpha-nvim',
      config = get_setup("alpha")
   })

   use 'neovim/nvim-lspconfig'
   use 'nvim-telescope/telescope.nvim'

   use ({
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = get_setup("treesitter")
   })

   use ({
      'akinsho/toggleterm.nvim', tag = '*',
      config = get_setup("toggleterm")
   })
  
   use ({
      'romgrk/barbar.nvim',
      config = get_setup("barbar")
   })



  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

