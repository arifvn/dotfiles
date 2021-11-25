nnoremap <SPACE> <Nop>                
let mapleader = " "                      " leader key
scriptencoding utf-8
filetype plugin on
filetype plugin indent on                " allow auto-indenting depending on file type
syntax enable                            " disable it can make vim much more faster
let &fcs='eob: '                         " replace ~ for blank line with empty  
let g:cursorhold_updatetime = 100        " Fix Cursor Hold
set relativenumber                       " show relativenumber when scrolling
set nosc noru                            " disable info about cursor position
set noswapfile                           " disable creating swapfile
set nowrap                               " prevent wrapping line 
set nobackup                             " prevent creating backup file 
set nowritebackup
set nocompatible                         " disable compatibility to old-time viet showmatch               
set showmatch                            " show matching
set mouse=v                              " middle-click paste with 
set incsearch                            " incremental search
set hlsearch
set expandtab                            " converts tabs to white space
set smarttab
set tabstop=2                            " number of columns occupied by a tab 
set softtabstop=2                        " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2                         " when indent using shift set it to 2 space
set cindent
set autoindent                           " indent a new line the same amount as the line just typed
set wildmenu                             " enbale menu in command
set wildmode=longest:full,full           " and make it readable in list
set mouse=a                              " enable mouse click
set ttyfast                              " Speed up scrolling in Vim
set lazyredraw                           " Speed up scrolling in Vim too
set termguicolors                        " enable support for most ui related things, like theme etc.
set number
set encoding=UTF-8
set clipboard=unnamed                    " enable paste from another program 
set scrolloff=10                         " make content always visible, folllowing the cursor
set t_BE=
set backspace=start,eol,indent
set background=dark                      " use colors that suit a dark background
set splitbelow                           " set cursor to new created split window
set splitright                           " set cursor to new created split window
set noshowcmd                            " don't show last command
set noshowmode                           " don't show show mode, airline already handle it 
set signcolumn=yes                       " prevent shift text whenever git/diagnosist sign appear
"set ignorecase                          " ignorecase when searhing 
"set cursorline                          " cursor line, might slow down scrolling if on

" clear search result when entering insert mode
augroup ClearSearch
  autocmd!
  autocmd InsertEnter * let @/ = ''
augroup END

" jump to last position when reopening a file
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

