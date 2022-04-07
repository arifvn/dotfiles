-- npm install -g emmet-ls
return function(nvim_lsp)
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  nvim_lsp.emmet_ls.setup {
    cmd = { 'emmet-ls', '--stdio' },
    filetypes = { 'html' },
    root_dir = function(fname)
      return vim.loop.cwd()
    end,
    capabilities = capabilities,
  }
end
