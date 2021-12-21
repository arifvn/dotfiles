local map = require 'map'

map('v', '<leader>s', ':call search#search_visual()<CR>', { silent = true })
map('v', '<leader>sa', ':BrowserSearch<CR>', { silent = true })
