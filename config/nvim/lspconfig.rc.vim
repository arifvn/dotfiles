" color and bg for LSP linter
hi LspDiagnosticsVirtualTextError guifg=#DB4B4B guibg=NONE gui=NONE term=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#E0AF68 guibg=NONE gui=NONE term=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#0DB9D7 guibg=NONE gui=NONE term=NONE
hi LspDiagnosticsVirtualTextHint guifg=#10B981 guibg=NONE gui=NONE term=NONE

lua << EOF
  ------------------------------------- 
  --- 
  --- BASIC LSP CONFIGS
  --- 
  ------------------------------------- 

  local handlers =  {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = {
          prefix = '',
          spacing = 0,
        },
    })
  }

  --- local handlers =  {
  ---   ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  ---     	virtual_text = {
  ---         prefix = '●',
  ---     		spacing = 0,
  ---     	},
  ---   })
  --- }
  --- 
  --- local signs = { Error = '●', Warning = '●', Hint = '●', Information = '●' }
  --- for type, icon in pairs(signs) do
  ---     local hl = "LspDiagnosticsSign" .. type
  ---     vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  --- end

  local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
  for type, icon in pairs(signs) do
      local hl = "LspDiagnosticsSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end


  local nvim_lsp = require('lspconfig')

  local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true, silent=true }

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  local servers = { 'tsserver' }
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      },
      handlers = handlers
    }
  end

  ------------------------------------- 
  --- 
  --- ESLINT INTEGRATION 
  --- 
  ------------------------------------- 

  local util = require "lspconfig".util

  require'lspconfig'.diagnosticls.setup{
    filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'markdown', 'pandoc' },
    root_dir = function(fname)
      return util.root_pattern("tsconfig.json")(fname) or
      util.root_pattern(".eslintrc.json")(fname);
    end,
    init_options = {
      linters = {
        eslint = {
          command = "./node_modules/.bin/eslint",
          rootPatterns = {".eslintrc.json", ".git"},
          debounce = 100,
          args = {
            "--stdin",
            "--stdin-filename",
            "%filepath",
            "--format",
            "json"
          },
          sourceName = "eslint",
          parseJson = {
            errorsRoot = "[0].messages",
            line = "line",
            column = "column",
            endLine = "endLine",
            endColumn = "endColumn",
            message = "[eslint] ${message} [${ruleId}]",
            security = "severity"
          },
          securities = {
            [2] = "error",
            [1] = "warning"
          }
        },
      },
      filetypes = {
        javascript = 'eslint',
        javascriptreact = 'eslint',
        typescript = 'eslint',
        typescriptreact = 'eslint',
      },
      formatters = {
        eslint_d = {
          command = 'eslint_d',
          args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
          rootPatterns = { '.git' },
        },
        prettier = {
          command = 'prettier',
          args = { '--stdin-filepath', '%filename' }
        }
      },
      formatFiletypes = {
        css = 'prettier',
        javascript = 'eslint_d',
        javascriptreact = 'eslint_d',
        json = 'prettier',
        scss = 'prettier',
        less = 'prettier',
        typescript = 'eslint_d',
        typescriptreact = 'eslint_d',
        json = 'prettier',
        markdown = 'prettier',
      }
    }
  }
EOF
