-- npm install -g vscode-html-languageserver-bin
return function(nvim_lsp, on_attach, handlers)
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  nvim_lsp.html.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
