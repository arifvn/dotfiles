-- npm install -g dockerfile-language-server-nodejs
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.dockerls.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
