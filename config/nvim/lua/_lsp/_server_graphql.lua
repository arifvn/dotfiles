-- npm install -g graphql-language-service-cli
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.graphql.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
