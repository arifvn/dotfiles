vim.api.nvim_command [[
function! ToggleHiddenAll()
  if exists('$TMUX')
    set laststatus=0
    let g:tpipeline_cursormoved = 1
  endif
endfunction
  
au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * :call ToggleHiddenAll()
]]
