call plug#begin('~/.config/nvim/plugged')

" --------------------
" themes
" --------------------

Plug 'overcache/NeoSolarized'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'ayu-theme/ayu-vim'
Plug 'navarasu/onedark.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }

" --------------------
" syntax highlighting, completions, linting etc.
" --------------------

" Option 1
Plug 'neoclide/coc.nvim', {'branch': 'release'}
 "install after coc-snippet in coc_extensions has installed
Plug 'honza/vim-snippets'
Plug 'morgsmccauley/vim-react-native-snippets'

" Option 2
"Plug 'dense-analysis/ale'

" Option 1 - syntax highlighting 
"Plug 'mxw/vim-jsx'
"Plug 'pangloss/vim-javascript'

" Option 2 - syntax highlighting (all in one)
Plug 'sheerun/vim-polyglot'

" auto surround
Plug 'tpope/vim-surround'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" --------------------
" additional
" --------------------

" easy commenting
Plug 'preservim/nerdcommenter'

" display color from hex code
Plug 'norcalli/nvim-colorizer.lua'

" enable repeat in non native commands
Plug 'tpope/vim-repeat'

" easy git commit merge etc
Plug 'tpope/vim-fugitive'

" see git diff
Plug 'vim-scripts/vim-gitgutter'

" show history at startup
Plug 'mhinz/vim-startify', {'branch' : 'center'}

" vim mode info
Plug 'vim-airline/vim-airline'

" easy navigate between vim pane and tmux pane
Plug 'christoomey/vim-tmux-navigator'

" file finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File explorer
Plug 'preservim/nerdtree'
" needed by NERDtree 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
call plug#end()

