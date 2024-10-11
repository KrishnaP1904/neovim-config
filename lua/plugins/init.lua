return require('packer').startup(function (use)
-- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- If you are using Packer
 -- use 'shaunsingh/nord.nvim'
  use { "folke/tokyonight.nvim" }
  use { 'nvim-tree/nvim-web-devicons' }
  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suituse {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}e
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
   })
  use {'nvim-treesitter/nvim-treesitter',run = ":TSUpdate"}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
}
use {'echasnovski/mini.nvim'}
use {"folke/which-key.nvim"}
use {'windwp/nvim-ts-autotag'}
use {'p00f/nvim-ts-rainbow'}
use {'windwp/nvim-autopairs'}

use 'norcalli/nvim-colorizer.lua'
use 'onsails/lspkind.nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'

use {
    'lewis6991/gitsigns.nvim',
    requires = {
        'nvim-lua/plenary.nvim'
    },
    config = function ()
        require('gitsigns').setup()        
    end
}
use {'nvimdev/dashboard-nvim',
event = 'VimEnter',
config = function()
   require('dashboard').setup({
    theme = 'hyper', -- or any other theme you prefer
    config = {
        week_header={
            enable = false
        },
        header = {
            "               ▄▄██████████▄▄             ",
            "               ▀▀▀   ██   ▀▀▀             ",
            "       ▄██▄   ▄▄████████████▄▄   ▄██▄     ",
            "     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ",
            "    ████▄ ▄███▀              ▀███▄ ▄████  ",
            "   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ",
            "   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ",
            "    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ",
            "       ███           ▀▀           ███     ",
            "       ██████████████████████████████     ",
            "   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ",
            "   ███  ███ ███   ██    ██   ███▄███  ███ ",
            "   ▀██▄████████   ██    ██   ████████▄██▀ ",
            "    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ",
            "     ▀███▄  ▀███████    ███████▀  ▄███▀   ",
            "       ▀███    ▀▀██████████▀▀▀   ███▀     ",
            "         ▀    ▄▄▄    ██    ▄▄▄    ▀       ",
            "               ▀████████████▀             ",
            "                                          ",
            "                                          ",
            "                                          ",
        }, 
    },
})
    
end
}
end)
