return function(nvim_lsp, on_attach, handlers)
  nvim_lsp.bashls.setup {
    on_attach = on_attach,
    handlers = handlers,
  }
end
