vim.g.nightflytransparent = 1
vim.g.nightflycursorcolor = 0
vim.g.nightflynormalfloat = 0
vim.g.nightflyUnderlineMatchParen = 1
vim.g.nightflyVertSplits = 0
vim.cmd [[ hi Visual term='reverse' cterm='reverse' guibg='Grey' ]]
vim.cmd 'colorscheme nightfly'

-- GLOBAL
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi NonText guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi Folded guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SpecialKey guibg=none ctermbg=NONE ]]
vim.cmd [[ hi EndOfBuffer guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SignColumn guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE ]]
vim.cmd [[ hi VertSplit guifg=#001428 guibg=NONE ctermbg=NONE ctermfg=NONE]]
