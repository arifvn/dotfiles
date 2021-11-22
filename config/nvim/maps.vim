" alt + w to quit with save 
nnoremap <C-W> :wq<cr>

" alt + q to quit without save 
nnoremap <S-q> :qa!<cr>

" alt + s to save
nnoremap <C-S> :w<cr>
inoremap <C-S> <Esc>:w<cr>gi

" jk and kj to close from insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" zj and zk to add blank line below and above
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" copies filepath to clipboard by pressing yf
nnoremap <silent> yf :let @+=expand('%:p')<CR>

" copies pwd to clipboard: command yd
noremap <silent> yd :let @+=expand('%:p:h')<CR>
 
" map ss to insert space in normal mode
" default behaviour of s is insert then delete one char backward
"nnoremap ss i<space><esc>

" select all using y + a
nmap <silent> ya gg<S-v>G

" Remap arrow keys to do nothing
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

" Remap arrow keys to do nothing
inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

" Remap arrow keys to do nothing
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
