" THEME 1
let g:nightflytransparent = 1
let g:nightflycursorcolor = 1
let g:nightflynormalfloat = 1
colorscheme nightfly

" THEME 2
"let g:neosolarized_contrast = 'high'
"let g:neosolarized_visibility = 'high'
"let g:neosolarized_vertsplitbgtrans = 1
"let g:neosolarized_bold = 1
"let g:neosolarized_underline = 0
"let g:neosolarized_termboldasbright = 0
"set background=dark
"colorscheme neosolarized                  

" THEME 3
"colorscheme dracula

" make sure place this down after colorscheme is defined
hi Normal guibg=NONE ctermbg=NONE                           " make bg support transparency
hi VertSplit guifg=#091353 guibg=NONE gui=NONE term=NONE    " set no-bg on vertical split
hi Visual term=reverse cterm=reverse guibg=Grey             " make selected text grey

