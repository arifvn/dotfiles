vim.g.mapleader = ' ' -- set leader key to space
vim.g.scriptencoding = 'utf-8'
vim.cmd 'syntax enable' -- enable syntax hightlighting
vim.opt.fillchars:append 'eob: ' -- replace ~ sign in the EndOfBuffer with space ' '
vim.g.cursorhold_updatetime = 100 -- fix cursor Hold
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.background = 'dark' -- use colors that suit a dark background
vim.opt.signcolumn = 'yes' -- prevent shift text whenever git/diagnosist sign appear
vim.opt.wildmode = { 'longest:full', 'full' } -- " completion mode when typing command (:)
vim.opt.mouse = 'a' -- enable mouse click
vim.opt.encoding = 'UTF-8' -- set default encoding
vim.opt.clipboard = vim.o.clipboard .. 'unnamed' --  enable paste from another program
vim.opt.formatoptions = vim.o.formatoptions .. 'j' --  delete comment character when joining commented lines
vim.g.t_BE = true -- disable brackets paste mode (text would mess if it's not set)
vim.opt.scrolloff = 10 -- make content always visible, folllowing the cursor
vim.opt.relativenumber = true -- enable relativenumber when scrolling
vim.opt.ruler = false -- disable ruler, info about cursor position
vim.opt.swapfile = false -- disable creating swapfile
vim.opt.wrap = false -- prevent wrapping line
vim.opt.backup = false -- don't create backup when overwriting a file
vim.opt.writebackup = false -- don't create backup when overwriting a file
vim.opt.compatible = false -- disable compatibility to old-time viet showmatch
vim.opt.showmatch = true -- show matching
vim.opt.incsearch = true -- display incremental search
vim.opt.hlsearch = true -- when there is a previous search pattern, highlight all its matches.
vim.opt.wildmenu = true -- enable menu in command
vim.opt.ttyfast = true -- speed up scrolling in Vim
vim.opt.lazyredraw = true -- speed up scrolling in Vim too
vim.opt.termguicolors = true -- enable support for most ui related things, like theme etc.
vim.opt.number = true -- display line number
vim.opt.splitbelow = true -- and set cursor to new created split window
vim.opt.splitright = true -- and set cursor to new created split window
vim.opt.showcmd = false -- don't show last command
vim.opt.showmode = false -- don't show show mode, lualine already handle it
vim.opt.hidden = true -- prevent nagging 'No write since last change'
vim.opt.ignorecase = true -- ignorecase when searhing
vim.opt.cursorline = false -- cursor line, might slow down scrolling if it's enable

-- Indent stuff
vim.cmd 'filetype plugin indent on'
local indent = 2
vim.opt.tabstop = indent -- number of columns occupied by a tab
vim.opt.softtabstop = indent -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.shiftwidth = indent -- when indent using shift set it to 2 space
vim.opt.expandtab = true
vim.opt.smarttab = true -- tab start at previous tab width
vim.opt.autoindent = true -- tab start at previous tab width
vim.opt.smartindent = true -- tab start at previous tab width for C like language

vim.api.nvim_command [[augroup ClearSearch]]
vim.api.nvim_command [[autocmd! ]]
vim.api.nvim_command [[autocmd InsertEnter * let @/ = '' ]]
vim.api.nvim_command [[augroup END]]

-- jump to last position when reopening a file
vim.api.nvim_command [[ autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif ]]

-- hightlight on yank
-- vim.api.nvim_command [[augroup highlight_yank]]
-- vim.api.nvim_command [[autocmd! ]]
-- vim.api.nvim_command [[au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300} ]]
-- vim.api.nvim_command [[augroup END]]
