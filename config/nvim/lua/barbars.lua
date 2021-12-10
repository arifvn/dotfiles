local map = require 'map'
local opts = { noremap = true, silent = true }

map('n', '<leader>j', ':BufferPrevious<CR>', opts)
map('n', '<leader>k', ':BufferNext<CR>', opts)

map('n', '<C-W>', ':w<CR>:BufferClose<CR>', opts)

vim.g.bufferline = {
  animation = true,
  auto_hide = false,
  tabpages = true,
  closable = false,
  clickable = true,
  icons = true,
  icon_custom_colors = false,
  icon_separator_active = '▎ ⚡',
  icon_separator_inactive = '  ',
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
