-- npm install -g vscode-css-languageserver-bin
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.cssls.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
