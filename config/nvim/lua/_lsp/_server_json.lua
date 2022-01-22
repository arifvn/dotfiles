-- npm install -g vscode-json-languageserver
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.jsonls.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line '$', 0 })
        end,
      },
    },
  }
end
