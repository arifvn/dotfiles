"set ignorecase                         " case insensitive 
let &fcs='eob: '                        " replace ~ for blank line with empty  
set termguicolors
set number
set relativenumber
set cursorline
set nohlsearch
set encoding=UTF-8
set clipboard=unnamed
set smarttab
set cindent
syntax on

" MAIN THEME
colorscheme nightfly                  

" SECONDARY THEME
"let g:neosolarized_contrast = 'high'
"let g:neosolarized_visibility = 'high'
"let g:neosolarized_vertSplitBgTrans = 1
"let g:neosolarized_bold = 1
"let g:neosolarized_underline = 0
"let g:neosolarized_termBoldAsBright = 0
"set background=dark
"colorscheme NeoSolarized                  

hi Normal guibg=NONE ctermbg=NONE
hi VertSplit guifg=#091353 guibg=NONE gui=NONE term=NONE    " set no bg vertical split
hi Visual term=reverse cterm=reverse guibg=Grey             " make selected text grey
set nocompatible                         " disable compatibility to old-time viet showmatch               
set showmatch                            " show matching
set mouse=v                              " middle-click paste with 
set incsearch                            " incremental search
set tabstop=2                            " number of columns occupied by a tab 
set softtabstop=2                        " see multiple spaces as tabstops so <BS> does the right thing
set expandtab                            " converts tabs to white space
set shiftwidth=2                         " width for autoindents
set autoindent                           " indent a new line the same amount as the line just typed
set wildmenu                             " enbale menu in command
set wildmode=longest:full,full           " and make it readable in list
filetype plugin indent on                " allow auto-indenting depending on file type
set mouse=a                              " enable mouse click
set ttyfast                              " Speed up scrolling in Vim
let g:cursorhold_updatetime = 100        " Fix Cursor Hold

source ~/.config/nvim/coc-configs.vim                   " COC
source ~/.config/nvim/colorizer-configs.vim             " Colorizer 
source ~/.config/nvim/nerdtree-configs.vim              " NerdTree
source ~/.config/nvim/telescope-configs.vim             " Telescope
source ~/.config/nvim/tmux-navigator-configs.vim        " Tmux-navigator
source ~/.config/nvim/nerdtree-hightlight-configs.vim   " NERDTree syntax hightlight
source ~/.config/nvim/nerdcommenter-configs.vim         " NERDCommenter 
source ~/.config/nvim/fugutive-git-configs.vim          " Fugutive git

" Vim jump to the last position when reopening a file
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
