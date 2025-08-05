require('nvim-treesitter.configs').setup({
  -- A list of parser names, or "all"
  ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
    -- Add more highlight options here if needed
  }
})

