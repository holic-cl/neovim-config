local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Declare the list of plugins.
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

-- Theme
Plug('kaicataldo/material.vim', { branch = 'main' })
Plug 'itchyny/lightline.vim'

-- LSP
Plug 'neovim/nvim-lspconfig'
Plug 'natebosch/vim-lsc'

-- Completition
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

-- File explorer and tabs
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'romgrk/barbar.nvim'

-- Nerdcommenter
Plug 'preservim/nerdcommenter'

-- blackline
Plug 'lukas-reineke/indent-blankline.nvim'

-- Coc
Plug('neoclide/coc.nvim', { branch = 'release' })

-- Tagbar
Plug 'preservim/tagbar'

-- Vim multiline cursors
Plug 'terryma/vim-multiple-cursors'

-- Terminal
Plug 'tc50cal/vim-terminal'

Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'glepnir/dashboard-nvim'

Plug 'rcarriga/nvim-notify'
Plug 'tpope/vim-eunuch'

vim.call('plug#end')

