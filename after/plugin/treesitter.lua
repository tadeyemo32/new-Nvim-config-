require('nvim-treesitter.configs').setup({
  -- List of parsers to install (excluding json)
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "c_sharp",
    "css",
    "dockerfile",
    "go",
    "haskell",
    "html",
    "java",
    "javascript",
    "jsdoc",
    "jsonc",         -- optional: JSON with comments, safer than plain json
    "kotlin",
    "latex",
    "lua",
    "markdown",
    "markdown_inline",
    "python",
    "ruby",
    "rust",
    "sql",
    "swift",
    "toml",
    "typescript",
    "tsx",
    "vim",
    "vimdoc",
    "yaml",
  },

  sync_install = false,    -- Install parsers asynchronously
  auto_install = true,     -- Auto-install missing parsers when entering buffer

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

