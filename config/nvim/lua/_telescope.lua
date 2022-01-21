local map = require 'map'
local opts = { noremap = true, silent = true }
local telescope = require 'telescope'

telescope.setup {
  extensions = {
    project = {
      base_dirs = {
        { path = '~/REPO', max_depth = 4 },
      },
      hidden_files = true, -- default: false
    },
  },
  defaults = {
    preview = false,
    prompt_prefix = '▶ ',
    selection_caret = '▶ ',
    layout_config = { horizontal = { preview_width = 0.5 } },
    file_ignore_patterns = { 'node_modules/.*', '%.env' },
  },
  pickers = {
    file_browser = { theme = 'dropdown' },
    find_files = { theme = 'dropdown' },
    live_grep = { theme = 'dropdown' },
    buffers = { theme = 'dropdown' },
    help_tags = { theme = 'dropdown' },
  },
}

map('n', ';;', ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>", opts)
map('n', ';a', "<cmd> lua require('telescope.builtin').file_browser{ cwd = vim.fn.expand('%:p:h')}<cr>", opts)
map(
  'n',
  '<c-p>',
  "<cmd> lua require('telescope.builtin').find_files({find_command = {'rg', '--files', '--hidden', '-g', '!.git'}})<cr>",
  opts
)
map('n', '<c-b>', "<cmd> lua require('telescope.builtin').buffers({ show_all_buffers = true })<cr>", opts)
map('n', '<c-g>', "<cmd> lua require('telescope.builtin').live_grep()<cr>", opts)
