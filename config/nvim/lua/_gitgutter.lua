vim.g.gitgutter_terminal_reports_focus = 1
vim.g.gitgutter_sign_modified = '|'
vim.g.gitgutter_sign_removed = '|'
vim.g.gitgutter_sign_added = '|'
vim.g.gitgutter_sign_removed_frst_line = '|'
vim.g.gitgutter_sign_removed_above_and_belo = ''
vim.g.gitgutter_sign_modified_removed = '|'
vim.cmd [[ hi GitGutterAdd guibg=none ctermbg=NONE ]]
vim.cmd [[ hi GitGutterChange guibg=none ctermbg=NONE ]]
vim.cmd [[ hi GitGutterDelete guibg=none ctermbg=NONE ]]