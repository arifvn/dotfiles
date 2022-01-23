-- brew install efm-langserver
-- more info visit https://github.com/mattn/efm-langserver
return function(nvim_lsp, on_attach, handlers)
  -- curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
  -- cargo install stylua
  local stylua = { formatCommand = 'stylua -s -', formatStdin = true }

  -- brew install shellcheck
  local shellcheck = {
    LintCommand = 'shellcheck -f gcc -x',
    lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  }

  -- brew install shmft
  local shfmt = {
    formatCommand = 'shfmt -ci -s -bn',
    formatStdin = true,
  }

  -- npm install -g eslint_d
  local eslint = {
    lintCommand = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
    lintStdin = true,
    lintFormats = { '%f:%l:%c: %m' },
    lintIgnoreExitCode = true,
    formatCommand = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}', -- it'd also run prettier as plugin
    formatStdin = true,
  }

  -- npm install -g eslint_d
  -- npm install markdownlint --save-dev
  local markdownLinter = {
    lintCommand = 'markdownlint -s',
    lintStdin = true,
    lintFormats = { '%f:%l %m', '%f:%l:%c %m', '%f: %l: %m' },
  }

  -- brew install pandoc
  local markdownFormatter = {
    formatCommand = 'pandoc -f markdown -t gfm -sp --tab-stop=2',
    formatStdin = true,
  }

  -- npm install -g prettierd
  local prettierd = {
    formatCommand = 'prettierd ${INPUT}',
    formatStdin = true,
    env = {
      string.format('PRETTIERD_DEFAULT_CONFIG=%s', vim.fn.expand '~/.config/prettierd/prettierrc.json'),
    },
  }

  local efm_root_markers = { '.git/' }
  local efm_languages = {
    lua = { stylua },
    markdown = { markdownFormatter, markdownLinter },
    sh = { shellcheck, shfmt },
    javascript = { eslint },
    typescript = { eslint },
    javascriptreact = { eslint },
    typescriptreact = { eslint },
    ['typescript.tsx'] = { eslint },
    ['javascript.jsx'] = { eslint },
    css = { prettierd },
    scss = { prettierd },
    sass = { prettierd },
    less = { prettierd },
    graphql = { prettierd },
    vue = { prettierd },
    html = { prettierd },
    svelte = { prettierd },
    yaml = { prettierd },
  }
  nvim_lsp.efm.setup {
    init_options = { documentFormatting = true },
    filetypes = vim.tbl_keys(efm_languages),
    root_dir = nvim_lsp.util.root_pattern(unpack(efm_root_markers)),
    settings = { rootMarkers = efm_root_markers, languages = efm_languages },
    on_attach = on_attach,
    handlers = handlers,
  }
end
