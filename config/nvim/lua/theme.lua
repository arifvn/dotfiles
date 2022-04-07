-- Kitty terminal using 'tokyonight'
-- Iterm2 terminal using 'onedark'
vim.api.nvim_command [[
if exists('$TERMINFO')
	let g:tokyonight_style = "night"
	let g:tokyonight_tranparent_background = 1
	let g:tokyonight_menu_selection_background = 'green'
	let g:tokyonight_disable_italic_comment = 0
	let g:tokyonight_enable_italic = 1

	colorscheme onedark
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
vim.cmd [[ hi IncSearch ctermfg=180 ctermbg=59 guifg=#E5C07B guibg=#5C6370 ]]
vim.cmd [[ hi TabLineSel guifg=#444b6a guibg=#232433 ]]
vim.cmd [[ hi Pmenu guifg=#d8d8d8 guibg=#1D2B41 ]]
-- vim.cmd [[ hi Pmenu guifg=#d8d8d8 guibg=#3B3543 ]]

-- make vertical split line tranparent
vim.cmd [[
	hi VertSplit ctermfg=1 ctermbg=NONE cterm=NONE
	set fillchars+=vert:\ 
]]

-- blinking cursor when navigating in search mode
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
