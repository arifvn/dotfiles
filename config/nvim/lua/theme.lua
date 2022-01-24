-- vim.cmd 'colorscheme onedark'
vim.api.nvim_command [[
let g:tokyonight_style = "night"
let g:tokyonight_tranparent_sidebar = 1
let g:tokyonight_tranparent = 1
let g:tokyonight_dark_sidebar = 0
let g:tokyonight_dark_float = 0

if exists('$TERMINFO')
	colorscheme tokyonight
else 
	colorscheme onedark
endif
]]

-- GLOBAL
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi NonText guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi Folded guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SpecialKey guibg=none ctermbg=NONE ]]
vim.cmd [[ hi EndOfBuffer guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SignColumn guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE ]]
vim.cmd [[ hi VertSplit guifg=#2F343C guibg=NONE ctermbg=NONE ctermfg=NONE ]]

-- cursor color on search mode
vim.cmd [[
	nnoremap <silent> n n:call HLNext(0.1)<cr>
	nnoremap <silent> N N:call HLNext(0.1)<cr>

	function! HLNext (blinktime)
		let target_pat = '\c\%#'.@/
		let ring = matchadd('ErrorMsg', target_pat, 101)
		redraw
		exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
		call matchdelete(ring)
		redraw
	endfunction
]]
