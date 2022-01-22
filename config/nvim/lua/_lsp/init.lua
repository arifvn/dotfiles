local nvim_lsp = require 'lspconfig'

require '_lsp/signs'
local on_attach = require '_lsp/on_attach'
local handlers = require '_lsp/handlers'
local capabilities = require '_lsp/capabilities'

require '_lsp/_server_bash'(nvim_lsp, on_attach, handlers)
require '_lsp/_server_css'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_docker'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_efm'(nvim_lsp, on_attach, handlers)
require '_lsp/_server_graphql'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_html'(nvim_lsp, on_attach, handlers)
require '_lsp/_server_json'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_lua'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_typescript'(nvim_lsp, on_attach, handlers, capabilities)
require '_lsp/_server_yaml'(nvim_lsp, on_attach, handlers, capabilities)
