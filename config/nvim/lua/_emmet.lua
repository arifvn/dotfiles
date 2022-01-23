vim.cmd [[ 
	augroup EmmetSettings
		autocmd! FileType html imap <tab> <plug>(emmet-expand-abbr)<cmd>echo " "<CR>
	augroup END
]]
