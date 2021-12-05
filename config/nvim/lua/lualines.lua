local colors = {
  blue = '#80a0ff',
  cyan = '#79dac8',
  black = '#011528',
  white = '#c6c6c6',
  red = '#ff5189',
  violet = '#d183e8',
  grey = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.black, bg = colors.black },
    b = { fg = colors.black, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
    x = { fg = colors.black, bg = colors.black },
    y = { fg = colors.black, bg = colors.black },
    z = { fg = colors.black, bg = colors.black },
  },
}

local empty = {
  function()
    return ' '
  end,
  padding = 0,
  color = 'lualine_c_normal',
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
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
    },
    lualine_c = { 'fileformat' },
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
