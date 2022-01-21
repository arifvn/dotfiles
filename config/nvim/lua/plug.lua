local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-----------------------------------
--             THEMES            --
-----------------------------------

Plug 'joshdick/onedark.vim'

-----------------------------------
--  SYNTAX HL COMPLETION LINTER  --
-----------------------------------

-- SYNTAX HIGHLIGHTING
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

-- LSP
Plug 'neovim/nvim-lspconfig'

-- COMPLETION
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-emoji'

-- SNIPPET
Plug 'rafamadriz/friendly-snippets'

-----------------------------------
--             EXTRAS            --
-----------------------------------

-- MARKDOWN
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })

-- WEB
Plug 'mattn/emmet-vim'
Plug 'norcalli/nvim-colorizer.lua'

-- GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

-- DISPLAYS
Plug('mhinz/vim-startify', { branch = 'center' })
Plug 'nvim-lualine/lualine.nvim'

-- NAVIGATION
Plug 'karb94/neoscroll.nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

-- EDITING
Plug('mg979/vim-visual-multi', { branch = 'master' })
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

vim.call 'plug#end'
