local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-----------------------------------
--             THEMES            --
-----------------------------------

Plug 'EdenEast/nightfox.nvim'

-----------------------------------
--  SYNTAX HL COMPLETION LINTER  --
-----------------------------------

Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
-- Plug 'sheerun/vim-polyglot'

-- COC
-- Plug('neoclide/coc.nvim', { branch = 'release' })
-- Plug 'honza/vim-snippets'
-- Plug 'morgsmccauley/vim-react-native-snippets'

-- ALE
-- Plug 'dense-analysis/ale'

-- BUILT-IN LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/cmp-emoji'
Plug 'rafamadriz/friendly-snippets'

-----------------------------------
--             EXTRAS            --
-----------------------------------

Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
Plug('mg979/vim-visual-multi', { branch = 'master' })
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'psliwka/vim-smoothie'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug('mhinz/vim-startify', { branch = 'center' })
Plug 'nvim-lualine/lualine.nvim'

Plug 'romgrk/barbar.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ggandor/lightspeed.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-project.nvim'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

vim.call 'plug#end'
