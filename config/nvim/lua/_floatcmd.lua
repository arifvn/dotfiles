local map = require 'map'

map('n', ':', '<cmd>FineCmdline<CR>', { noremap = true, silent = true })
-- map('n', '/', '<cmd>FineCmdline<CR>/', { noremap = true, silent = true })

require('fine-cmdline').setup {
  popup = {
    position = {
      row = '30%',
      col = '50%',
    },
    size = {
      width = '50%',
    },
    border = {
      style = 'rounded',
    },
    win_options = {
      winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
    },
  },
}
