require('nvim-treesitter.configs').setup {
  highlight = { enable = true, disable = { 'html', 'css' } },
  indent = { enable = true, disable = {} },
  ensure_installed = 'maintained',
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<cr>',
      scope_incremental = '<cr>',
      node_incremental = '<tab>',
      node_decremental = '<S-TAB>',
    },
  },
}

local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

parser_config.tsx.used_by = { 'javascript', 'typescript.tsx' }
