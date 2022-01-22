-- npm install -g typescript typescript-language-server
return function(nvim_lsp, on_attach, handlers, capabilities)
  nvim_lsp.tsserver.setup {
    filetypes = {
      'typescript',
      'typescriptreact',
      'typescript.tsx',
      'javascript',
      'javascriptreact',
    },
    root_dir = nvim_lsp.util.root_pattern('package.json', '.git', '.eslintrc.json', '.eslintrc.js'),
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  }
end
