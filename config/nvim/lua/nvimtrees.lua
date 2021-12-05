local tree_cb = require('nvim-tree.config').nvim_tree_callback
local map = require 'map'

-- Disable statusline within nvimtree buffer
vim.api.nvim_command [[
au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]]

vim.g.nvim_tree_gitignore = 0 -- 0 by default
vim.g.nvim_tree_quit_on_open = 0 -- 0 by default, closes the tree when you open a file
vim.g.nvim_tree_indent_markers = 1 -- 0 by default, this option shows indent markers when folders are open
vim.g.nvim_tree_git_hl = 0 -- 0 by default, will enable file highlight for git attributes (can be used without the icons).
vim.g.nvim_tree_highlight_opened_files = 0 -- 0 by default, will enable folder and file icon highlight for opened files/directories.
vim.g.nvim_tree_root_folder_modifier = ':t:r' -- This is the default. See :help filename-modifiers for more options
vim.g.nvim_tree_add_trailing = 0 -- 0 by default, append a trailing slash to folder names
vim.g.nvim_tree_group_empty = 1 -- 0 by default, compact folders that only contain a single folder into one node in the file tree
vim.g.nvim_tree_disable_window_picker = 1 -- 0 by default, will disable the window picker.
vim.g.nvim_tree_icon_padding = ' ' -- one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
vim.g.nvim_tree_respect_buf_cwd = 0 -- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
vim.g.nvim_tree_create_in_closed_folder = 0 -- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
vim.g.nvim_tree_refresh_wait = 1000 -- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
vim.g.nvim_tree_window_picker_exclude = {
  filetype = { 'notify', 'packer', 'qf' },
  buftype = { 'terminal' },
}

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  folder = {
    arrow_open = '',
    arrow_closed = '',
    default = '',
    open = '',
    empty = '',
    empty_open = '',
    symlink = '',
    symlink_open = '',
  },
  git = {
    unstaged = '',
    staged = '',
    unmerged = '',
    renamed = '➜',
    untracked = '',
    deleted = '',
    ignored = '',
  },
}

map('n', '<C-t>', ':lua require"tree".toggle(false)<CR>', { noremap = true, silent = true })
map('n', '<C-f>', ':lua require"tree".toggle(true)<CR>', { noremap = true, silent = true })

vim.cmd [[ hi NvimTreeFolderIcon guifg=#ABB2BF ]]
vim.cmd [[ hi NvimTreeFolderName guifg=#FFFFFF ]]

require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = true,
  ignore_ft_on_setup = {},
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_to_buf_dir = { enable = false, auto_open = true },
  diagnostics = {
    enable = false,
    icons = { hint = '', info = '', warning = '', error = '' },
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  system_open = { cmd = nil, args = {} },
  filters = { dotfiles = false, custom = { '.git' } },
  view = {
    width = 25,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { '<2-RightMouse>', 'cd' }, cb = tree_cb 'cd' },
        { key = 'v', cb = tree_cb 'vsplit' },
        { key = 'h', cb = tree_cb 'split' },
        { key = '<C-t>', cb = ':lua require"tree".toggle()<CR>' },
      },
    },
  },
}
