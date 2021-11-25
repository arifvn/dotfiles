call plug#begin('~/.config/nvim/plugged')

" ----------------------------------------
"
" THEMES
"
" ----------------------------------------

Plug 'bluz71/vim-nightfly-guicolors'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'overcache/NeoSolarized'


" ----------------------------------------
"
" SYNTAX HIGHLIGHTING, COMPLETIONS, LINTER Etc.
"
" ----------------------------------------

" Syntax Hightligthing 1
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Syntax Hightligthing 2
" Plug 'sheerun/vim-polyglot'

" OPTION 1
" -------------------------
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'honza/vim-snippets'
" Plug 'morgsmccauley/vim-react-native-snippets'

" OPTION 2
" -------------------------
" Plug 'dense-analysis/ale'

" OPTION 3
" -------------------------
" Common Lsp Config
Plug 'neovim/nvim-lspconfig'
" Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Snippets Loader
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" Snippets Collections
Plug 'rafamadriz/friendly-snippets'

" ----------------------------------------
"
" EXTRAS
"
" ----------------------------------------

" Markdown previewer
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Easy Select Replace like VSCode
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Auto Surround
Plug 'tpope/vim-surround'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Easy Comment 
Plug 'preservim/nerdcommenter'

" Display Color from HEX Code
Plug 'norcalli/nvim-colorizer.lua'

" Easy GIT Commit Merge Etc
Plug 'tpope/vim-fugitive'

" Display GIT Diff 
Plug 'airblade/vim-gitgutter'

" Show History at Startup
Plug 'glepnir/dashboard-nvim'
" Plug 'mhinz/vim-startify', {'branch' : 'center'}

" VIM Mode Info
" Plug 'vim-airline/vim-airline'
Plug 'nvim-lualine/lualine.nvim'

" Easy Navigate between VIM Pane and TMUX Pane
Plug 'christoomey/vim-tmux-navigator'

" File Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" File explorer
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

call plug#end()
