-- brew install lua-language-server
return function(nvim_lsp, on_attach, handlers, capabilities)
  local system_name

  if vim.fn.has 'mac' == 1 then
    system_name = 'macOS'
  elseif vim.fn.has 'unix' == 1 then
    system_name = 'Linux'
  elseif vim.fn.has 'win32' == 1 then
    system_name = 'Windows'
  else
    print(system_name, 'Unsupported system for sumneko')
  end

  local sumneko_binary_path = vim.fn.exepath 'lua-language-server'
  local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

  local runtime_path = vim.split(package.path, ';')
  table.insert(runtime_path, 'lua/?.lua')
  table.insert(runtime_path, 'lua/?/init.lua')

  nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
    cmd = { sumneko_binary_path, '-E', sumneko_root_path .. '/main.lua' },
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT',
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file('', true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = { enable = false },
      },
    },
  }
end