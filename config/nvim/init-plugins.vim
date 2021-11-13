call plug#begin('~/.config/nvim/plugged')

" themes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ghifarit53/tokyonight-vim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'ayu-theme/ayu-vim'
Plug 'navarasu/onedark.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }

" zsh syntax highlighting
Plug 'zsh-users/zsh-syntax-highlighting'

" vscode like auto import
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vscode like snippet
" install after coc-snippet in coc_extensions has installed
Plug 'honza/vim-snippets'
Plug 'morgsmccauley/vim-react-native-snippets'

" easy git commit merge etc
Plug 'tpope/vim-fugitive'

" see git diff
Plug 'vim-scripts/vim-gitgutter'

" show history at startup
Plug 'mhinz/vim-startify', {'branch' : 'center'}

" easy commenting
Plug 'preservim/nerdcommenter'

" syntax highlighting
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'

" vim mode info
Plug 'vim-airline/vim-airline'

" icons for all plugins
Plug 'ryanoasis/vim-devicons'

" git wrapper
Plug 'tpope/vim-fugitive'

" auto surround
Plug 'tpope/vim-surround'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" easy navigate between vim pane and tmux pane
Plug 'christoomey/vim-tmux-navigator'

" file finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

