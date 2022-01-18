local map = require 'map'
local opts = { noremap = true, silent = true }

map('n', '<leader>j', ':BufferPrevious<cr>', opts)
map('n', '<leader>k', ':BufferNext<cr>', opts)
map('n', '<leader>h', ':BufferMovePrevious<cr>', opts)
map('n', '<leader>l', ':BufferMoveNext<cr>', opts)
map('n', '<c-w>', ':w<cr>:BufferClose<cr>', opts)

vim.cmd [[ hi buffertabpagefill guibg=#01172800 ]]
vim.cmd [[ hi buffercurrent guibg=#004868 ]]
vim.cmd [[ hi buffercurrentsign guibg=#004868 ]]

vim.g.bufferline = {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = false,
  clickable = true,
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '▎ ',
  icon_separator_inactive = ' ',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
  insert_at_end = false,
  insert_at_start = false,
  maximum_padding = 2,
  maximum_length = 30,
  semantic_letters = true,
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
  no_name_title = nil,
}
