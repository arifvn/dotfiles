" leader key
nnoremap <SPACE> <Nop> 
let mapleader = " "

" alt + w to quit with save 
nnoremap <C-W> :wq<cr>

" alt + q to quit without save 
nnoremap <S-q> :qa!<cr>

" alt + s to save
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi

" jk and kj to close from insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" zj and zk to add blank line below and above
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" switch tab using command h/l
nnoremap <leader>j gT
nnoremap <leader>k gt

" copies filepath to clipboard by pressing yf
nnoremap <silent> yf :let @+=expand('%:p')<CR>

" copies pwd to clipboard: command yd
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" map ss to insert space in normal mode
" default behaviour of s is insert then delete one char backward
nnoremap ss i<space><esc>

