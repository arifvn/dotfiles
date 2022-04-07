local map = require 'map'

vim.g.EasyMotion_do_mapping = 0
vim.g.EasyMotion_smartcase = 1

map('n', 'S', '<Plug>(easymotion-bd-f)', { noremap = false, silent = true })
map('n', 's', '<Plug>(easymotion-overwin-f)', { noremap = false, silent = true })
