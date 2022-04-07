local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-----------------------------------
--             THEMES            --
-----------------------------------

Plug 'joshdick/onedark.vim'
Plug 'ghifarit53/tokyonight-vim'

-----------------------------------
--  SYNTAX HL COMPLETION LINTER  --
-----------------------------------

-- SYNTAX HIGHLIGHTING
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'sheerun/vim-polyglot'
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
Plug 'b0o/schemastore.nvim'

-----------------------------------
--             EXTRAS            --
-----------------------------------

-- MARKDOWN
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
-- GIT
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
-- DISPLAYS
Plug('mhinz/vim-startify', { branch = 'center' })
Plug 'nvim-lualine/lualine.nvim'
Plug 'vimpostor/vim-tpipeline'
-- NAVIGATION
Plug 'karb94/neoscroll.nvim'
Plug 'romgrk/barbar.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug('dstein64/nvim-scrollview', { branch = 'main' })
Plug 'easymotion/vim-easymotion'

-- EDITING
Plug('mg979/vim-visual-multi', { branch = 'master' })
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'pseewald/anyfold'
Plug 'norcalli/nvim-colorizer.lua'

vim.call 'plug#end'
