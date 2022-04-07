local map = require 'map'

-- indenting
map('i', '<C-l>', '<Esc>m90yiw`9a<CR><Esc>O<Esc>0pj0viwpka<Tab>', { noremap = true, silent = true })
map('n', '<c-o>', '0ywo<Esc>0pa', { noremap = true, silent = true })
map('i', '<c-o>', '<Esc>0ywo<Esc>0pa', { noremap = true, silent = true })

-- config related stuff
map('n', '<leader>o', ':so %<CR>:echo "Configuration Reload ✅"<CR>', { noremap = true, silent = true })
map('n', '<leader>pi', ':PlugInstall<CR>', { noremap = true, silent = true })
map('n', '<leader>pc', ':PlugClean<CR>', { noremap = true, silent = true })

-- navigate inside insert mode
map('i', '<C-j>', '<Esc>ji', { noremap = true, silent = true })
map('i', '<C-k>', '<Esc>ki', { noremap = true, silent = true })

-- turn of search highlight
map('n', '<C-i>', ':nohl<CR>:echo ""<CR>', { noremap = true, silent = true })

-- alt + q to quit without save
map('n', '<S-q>', ':qa!<CR>', { noremap = true })

-- alt + w delete buffer (ex. close buffer tab)
map('n', '<c-w>', ':bd!<CR>', { noremap = true, silent = true })

-- alt + s to save
map('n', '<C-S>', ':w<CR>:echo ""<CR>', { noremap = true, silent = true })
map('i', '<C-S>', '<Esc>:w<CR>:echo ""<CR>l', { noremap = true, silent = true })

-- jk and kj to close from insert mode
map('i', 'jk', '<Esc>', { noremap = true })
map('i', 'kj', '<Esc>', { noremap = true })

-- zj and zk to add blank line below and above
map('n', 'zj', 'o<Esc>k', { noremap = true, silent = true })
map('n', 'zk', 'O<Esc>j', { noremap = true, silent = true })

-- copies filepath to clipboard by pressing yf
map('n', 'yf', ':let @+=expand("%:p")<CR>', { noremap = true, silent = true })

-- copies pwd to clipboard: command yd
map('n', 'yd', ':let @+=expand("%:p:h")<CR>', { noremap = true, silent = true })

-- select all and copy using y + a
map('n', 'ya', 'gg<S-v>GY<C-c><cmd> :echo " "<CR>', { silent = true })

-- Remap arrow keys to do nothing
map('n', '<Left>', '<NOP>')
map('n', '<Right>', '<NOP>')
map('n', '<Up>', '<NOP>')
map('n', '<Down>', '<NOP>')
map('i', '<Left>', '<NOP>')
map('i', '<Right>', '<NOP>')
map('i', '<Up>', '<NOP>')
map('i', '<Down>', '<NOP>')
map('v', '<Left>', '<NOP>')
map('v', '<Right>', '<NOP>')
map('v', '<Up>', '<NOP>')
map('v', '<Down>', '<NOP>')
