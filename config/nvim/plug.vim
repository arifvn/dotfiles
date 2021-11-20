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

" SNIPPETS
" this usually is used together with COC
Plug 'honza/vim-snippets'

Plug 'morgsmccauley/vim-react-native-snippets'

"OPTION 1
"--------------------
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"OPTION 2
"--------------------
"Plug 'dense-analysis/ale'

"OPTION 3
"--------------------
"Plug 'neovim/nvim-lspconfig'

" Syntax Hightligthing 
" Plug 'sheerun/vim-polyglot' - ANOTHER OPTION 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" ----------------------------------------
"
" EXTRAS
"
" ----------------------------------------

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

" Enable [dot] Repeat in Non Native Commands
Plug 'tpope/vim-repeat'

" Easy GIT Commit Merge Etc
Plug 'tpope/vim-fugitive'

" Display GIT Diff 
Plug 'vim-scripts/vim-gitgutter'

" Show History at Startup
Plug 'mhinz/vim-startify', {'branch' : 'center'}

" VIM Mode Info
Plug 'vim-airline/vim-airline'

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
