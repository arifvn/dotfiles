local nvim_lsp = require 'lspconfig'

require '_lsp/signs'
local on_attach = require '_lsp/on_attach'
local handlers = require '_lsp/handlers'
local capabilities = require '_lsp/capabilities'

require '_lsp/server_typescript'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/server_lua'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/server_efm'(nvim_lsp, on_attach, handlers)
require '_lsp/server_bash'(nvim_lsp, on_attach, handlers)
