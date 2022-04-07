local map = require 'map'

vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.nerdcommentemptylines = 1
vim.g.nerdcreatedefaultmappings = 1

map('n', '<C-_>', ':call nerdcommenter#Comment("0", "toggle")gv<CR>', { noremap = true, silent = true })
map('i', '<C-_>', '<Esc>:call nerdcommenter#Comment("0", "toggle")gv<CR>0', { noremap = true, silent = true })
map('v', '<C-_>', ':call nerdcommenter#Comment("0", "toggle")gv<CR>', { noremap = true, silent = true })
map('v', '<C-h>', '<Plug>NERDCommenterSexy<CR>gv', { noremap = false, silent = true })
