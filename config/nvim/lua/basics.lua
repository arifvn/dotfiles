local indent = 2
vim.g.mapleader = ' '
vim.g.scriptencoding = 'utf-8'
vim.cmd 'filetype plugin on'
vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax enable'
vim.opt.fillchars:append 'eob: ' -- replace ~ for blank line (eob = EndOfBuffer) with empty
vim.g.cursorhold_updatetime = 100 -- Fix Cursor Hold
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.background = 'dark' -- " use colors that suit a dark background
vim.opt.signcolumn = 'yes' -- " prevent shift text whenever git/diagnosist sign appear
vim.opt.wildmode = { 'longest:full', 'full' } -- " and make it readable in list
vim.opt.mouse = 'a' -- "enable mouse click
vim.opt.encoding = 'UTF-8'
vim.opt.clipboard = vim.o.clipboard .. 'unnamed' --  enable paste from another program
vim.opt.formatoptions = vim.o.formatoptions .. 'j' --  Delete comment character when joining commented lines
vim.g.t_BE = true -- Disable brackets paste mode (text would mess if it's not set)
vim.opt.scrolloff = 10 -- make content always visible, folllowing the cursor
vim.opt.tabstop = indent -- number of columns occupied by a tab
vim.opt.softtabstop = indent -- see multiple spaces as tabstops so <BS> does the right thing
vim.opt.shiftwidth = indent -- when indent using shift set it to 2 space
vim.opt.relativenumber = true -- show relativenumber when scrolling
vim.opt.ruler = false -- disable ruler, info about cursor position
vim.opt.swapfile = false -- disable creating swapfile
vim.opt.wrap = false -- prevent wrapping line
vim.opt.backup = false -- prevent creating backup file
vim.opt.writebackup = false
vim.opt.compatible = false -- disable compatibility to old-time viet showmatch
vim.opt.showmatch = true -- show matching
vim.opt.incsearch = true -- incremental search
vim.opt.hlsearch = true
vim.opt.expandtab = false -- converts tabs to white space
vim.opt.smarttab = true
vim.opt.cindent = true
vim.opt.autoindent = false -- indent a new line the same amount as the line just typed
vim.opt.wildmenu = true -- enable menu in command
vim.opt.ttyfast = true -- Speed up scrolling in Vim
vim.opt.lazyredraw = true -- Speed up scrolling in Vim too
vim.opt.termguicolors = true -- enable support for most ui related things, like theme etc.
vim.opt.number = true
vim.opt.splitbelow = true -- and set cursor to new created split window
vim.opt.splitright = true -- and set cursor to new created split window
vim.opt.showcmd = false -- don't show last command
vim.opt.showmode = false -- don't show show mode, lualine already handle it
vim.opt.hidden = true -- prevent nagging 'No write since last change'
vim.opt.ignorecase = true -- ignorecase when searhing
vim.opt.cursorline = false -- cursor line, might slow down scrolling if it's enable
vim.opt.cursorline = false -- cursor line, might slow down scrolling if it's enable slow down scrolling if it's enable

-- clear search result when entering insert mode
vim.api.nvim_command [[augroup ClearSearch]]
vim.api.nvim_command [[autocmd! ]]
vim.api.nvim_command [[autocmd InsertEnter * let @/ = '' ]]
vim.api.nvim_command [[augroup END]]

-- jump to last position when reopening a file
if vim.fn.has 'autocmd' then
  vim.api.nvim_command [[ autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")| exe "normal! g'\"" | endif ]]
end

-- hightlight on yank
vim.api.nvim_command [[augroup highlight_yank]]
vim.api.nvim_command [[autocmd! ]]
vim.api.nvim_command [[au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700} ]]
vim.api.nvim_command [[augroup END]]
