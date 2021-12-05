-- THEME 1
-- vim.g.nightflytransparent = 1
-- vim.g.nightflycursorcolor = 0
-- vim.g.nightflynormalfloat = 0
-- vim.g.nightflyUnderlineMatchParen = 1
-- vim.g.nightflyVertSplits = 0
-- vim.cmd [[ hi Visual term='reverse' cterm='reverse' guibg='Grey' ]]
-- vim.cmd 'colorscheme nightfly'

-- THEME 2
-- vim.cmd 'colorscheme dracula'

-- THEME 3
-- vim.cmd 'colorscheme onedark'

-- THEME 4
local nightfox = require 'nightfox'
nightfox.setup {
  fox = 'nightfox',
  transparent = true, -- Disable setting the background color
  alt_nc = true, -- Non current window bg to alt color see `hl-NormalNC`
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = 'italic', -- Style that is applied to comments: see `highlight-args` for options
    functions = 'italic', -- Style that is applied to functions: see `highlight-args` for options
    keywords = 'NONE', -- Style that is applied to keywords: see `highlight-args` for options
    strings = 'NONE', -- Style that is applied to strings: see `highlight-args` for options
    variables = 'NONE', -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = true, -- Enable/Disable inverse highlighting for match parens
    visual = true, -- Enable/Disable inverse highlighting for visual selection
    search = true, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {}, -- Override default colors
  hlgroups = {}, -- Override highlight groups
}
nightfox.load()

-- GLOBAL
vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi NonText guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi LineNr guibg=NONE ctermbg=NONE ]]
vim.cmd [[ hi Folded guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SpecialKey guibg=none ctermbg=NONE ]]
vim.cmd [[ hi EndOfBuffer guibg=none ctermbg=NONE ]]
vim.cmd [[ hi SignColumn guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE ]]
vim.cmd [[ hi VertSplit guibg=NONE guifg=#182330 ctermbg=NONE ]]
