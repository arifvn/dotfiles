local signs = {
  Error = '●',
  Warning = '○',
  Warn = '○', -- sumneko_lua
  Hint = '○',
  Information = '○', -- sumneko_lua
  Info = '○',
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl })
end

vim.cmd [[
  highlight DiagnosticSignError guifg=#DB4B4B
  highlight DiagnosticSignWarning guifg=#E0AF68
  highlight DiagnosticSignHint guifg=#10B981
  highlight DiagnosticSignInfo guifg=#0DB9D7

  highlight DiagnosticSignWarn guifg=#E0AF68
  highlight DiagnosticSignInformation guifg=#0DB9D7
]]

-- highlight DiagnosticVirtualTextError guifg=#DB4B4B
-- highlight DiagnosticVirtualTextWarning guifg=#E0AF68
-- highlight DiagnosticVirtualTextHint guifg=#10B981
-- highlight DiagnosticVirtualTextInfo guifg=#0DB9D7
