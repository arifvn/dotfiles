lua << EOF
local telescope = require('telescope')

telescope.setup{
  defaults = {
    preview = false, 
    prompt_prefix = ' ',
    selection_caret = '▶ ',
    layout_config = { horizontal = { preview_width = 0.5 } },
    file_ignore_patterns = { 'node_modules/.*', '%.env' },
  },
  pickers = {
    find_files = {
      theme = "dropdown"
    },
    live_grep = {
      theme = "dropdown"
    },
    buffers = {
      theme = "dropdown"
    },
    help_tags = {
     theme = "dropdown"
    },
  }
}
EOF

" disable alt + p for Telescope in NERDTree buffer
:autocmd FileType nerdtree noremap <buffer> <C-P> <nop>

" find files except what are defined in .gitignore
nnoremap <C-P> <cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>

nnoremap <C-G> <cmd>lua require('telescope.builtin').live_grep()<cr>

"nnoremap <C-M> <cmd>lua require('telescope.builtin').keymaps()<cr>

nnoremap <C-B> <cmd>lua require('telescope.builtin').buffers({ show_all_buffers = true })<cr>

nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

