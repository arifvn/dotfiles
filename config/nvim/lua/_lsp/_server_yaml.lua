-- npm install -g yaml-language-server
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.yamlls.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
