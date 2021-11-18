" disable alt + p for Telescope in NERDTree buffer
:autocmd FileType nerdtree noremap <buffer> <C-P> <nop>

" find files except what are defined in .gitignore
nnoremap <C-P> <cmd>lua require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>

nnoremap <C-G> <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <C-B> <cmd>lua require('telescope.builtin').buffers({ show_all_buffers = true })<cr>
