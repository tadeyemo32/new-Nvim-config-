local lsp = require("lsp-zero")

-- 1. Use recommended defaults
lsp.preset("recommended")

-- 2. Automatically install these language servers via Mason
lsp.ensure_installed({
  -- Web Dev
  "html",
  "cssls",
  "eslint",
  "jsonls",
  "emmet_ls",

  -- Backend
  "lua_ls",
  "pyright",
  "gopls",

  -- Systems
  "clangd",
  "rust_analyzer",
  "bashls",

  -- Other
  "yamlls",
  "marksman",     -- Markdown
  "dockerls",
  "vimls",
})

-- 3. Keybindings and on_attach behavior
lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr }

  local bind = vim.keymap.set
  bind("n", "gd", vim.lsp.buf.definition, opts)
  bind("n", "K", vim.lsp.buf.hover, opts)
  bind("n", "<leader>rn", vim.lsp.buf.rename, opts)
  bind("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  bind("n", "[d", vim.diagnostic.goto_next, opts)
  bind("n", "]d", vim.diagnostic.goto_prev, opts)
  bind("n", "<leader>e", vim.diagnostic.open_float, opts)
end)

-- 4. Set it up
lsp.setup()

