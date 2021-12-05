local custom_nightfox = require 'lualine.themes.nightfox'
custom_nightfox.normal.c.bg = '#182330'

local empty = {
  function()
    return ' '
  end,
  padding = 0,
  color = 'lualine_c_normal',
}

require('lualine').setup {
  options = {
    theme = custom_nightfox,
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
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
