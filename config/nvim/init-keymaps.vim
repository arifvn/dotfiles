" leader key
nnoremap <SPACE> <Nop>
let mapleader = " "

" alt + w to quit  
nnoremap <C-W> :q<cr>

" alt + s to save
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi

" jk and kj to close from insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" zj and zk to add blank line below and above
nnoremap <silent> zj o<Esc>k
nnoremap <silent> zk O<Esc>j

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv
vmap <C-h> <Plug>NERDCommenterSexy<CR>gv

" Telescope File Finder
nnoremap <C-P> :Telescope find_files<CR>

" Fugitive Git
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
