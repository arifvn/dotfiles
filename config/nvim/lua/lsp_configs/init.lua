local nvim_lsp = require 'lspconfig'

require 'lsp_configs/signs'
local on_attach = require 'lsp_configs/on_attach'
local handlers = require 'lsp_configs/handlers'
local capabilities = require 'lsp_configs/capabilities'

require 'lsp_configs/server_typescript'(nvim_lsp, on_attach, handlers, capabilities)
require 'lsp_configs/server_lua'(nvim_lsp, on_attach, handlers, capabilities)
require 'lsp_configs/server_efm'(nvim_lsp, on_attach, handlers)
require 'lsp_configs/server_bash'(nvim_lsp, on_attach, handlers)
