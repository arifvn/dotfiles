local custom_nightfly = require 'lualine.themes.nightfly'
custom_nightfly.normal.c.bg = '#011627'
custom_nightfly.inactive.c.bg = 'NONE'

local empty = {
  function()
    return ' '
  end,
  padding = 0,
  color = 'lualine_c_normal',
}

require('lualine').setup {
  options = {
    theme = custom_nightfly,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      empty,
      { 'mode', separator = { left = '' } },
    },
    lualine_b = {
      'filename',
      'branch',
      'diff',
      { 'diagnostics', sources = { 'nvim_lsp', 'coc' } },
      'fileformat',
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' } },
      empty,
    },
  },
  inactive_sections = {},
  tabline = {},
  extensions = {},
}
