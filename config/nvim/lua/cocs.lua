local map = require 'map'

vim.opt.updatetime = 300
vim.opt.shortmess = vim.o.shortmess .. 'c'
vim.g.coc_global_extensions = {
  'coc-tsserver',
  'coc-eslint',
  'coc-html',
  'coc-snippets',
  'coc-json',
  'coc-css',
  'coc-format-json',
  'coc-emoji',
  'coc-marketplace',
}

-- trigger completion
local opts2 = { silent = true, expr = true }
map('i', '<TAB>', 'pumvisible() ? "<C-n>" : <SID>check_back_space() ? "<TAB>" :coc#refresh()', opts2)
map('i', '<TAB>', 'pumvisible() ? "<C-n>" : <SID>check_back_space() ? "<TAB>" :coc#refresh()', opts2)

-- CocAction
local opts = { noremap = true, silent = true, nowait = true }
map('i', '<space>a', ':<C-u>CocList diagnostics<cr>', opts)
map('n', '<space>a', ':<C-u>CocList diagnostics<cr>', opts)
map('n', '<space>c', ':<C-u>CocList commands<cr>', opts)
map('n', '<space>o', ':<C-u>CocList outline<cr>', opts)
map('n', '<space>j', ':<C-u>CocNext<CR>', opts)
map('n', '<space>k', ':<C-u>CocPrev<CR>', opts)
map('n', '<space>p', ':<C-u>CocListResume<CR>', opts)

-- inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

-- function! s:check_back_space() abort
-- let col = col('.') - 1
-- return !col || getline('.')[col - 1]  =~# '\s'
-- endfunction

-- Mappings
map('n', '<C-[>', '<Plug>(coc-diagnostic-prev)', { silent = true })
map('n', '<C-]>', '<Plug>(coc-diagnostic-next)', { silent = true })
map('n', 'gd', '<Plug>(coc-definition)', { silent = true })
map('n', 'gy', '<Plug>(coc-type-definition)', { silent = true })
map('n', 'gi', '<Plug>(coc-implementation)', { silent = true })
map('n', 'gn', '<Plug>(coc-references)', { silent = true })
map('n', 'gr', '<Plug>(coc-rename)', { silent = true })
map('n', 'K', ':call <SID>show_documentation()<CR>', { noremap = true, silent = true })

if vim.fn.has 'nvim' then
  map('i', '<c-space>', 'coc#refresh()', { silent = true, noremap = true, expr = true })
else
  map('i', '<c-@>', 'coc#refresh()', { silent = true, noremap = true, expr = true })
end
-- Setup formatter
vim.api.nvim_command [[augroup mygroup]]
vim.api.nvim_command [[autocmd!]]
vim.api.nvim_command [[autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')]]
vim.api.nvim_command [[autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')]]
vim.api.nvim_command [[augroup END]]

-- :Format - format current buffer
vim.api.nvim_command [[command! -nargs=0 Format :call CocAction('format')]]
-- :Fold - fold current buffer
vim.api.nvim_command [[command! -nargs=? Fold :call CocAction('fold', <f-args>)]]
-- :OR - organize_imports
vim.api.nvim_command [[command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')]]
