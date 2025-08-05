-- === set.lua ===

local opt = vim.opt  -- alias for cleaner syntax

-- Line numbers
opt.number = true            -- show absolute line number on current line
opt.relativenumber = true    -- show relative line numbers elsewhere

-- Tabs & Indentation
opt.tabstop = 4              -- number of spaces tabs count for
opt.shiftwidth = 4           -- size of indent
opt.expandtab = true         -- convert tabs to spaces
opt.smartindent = true       -- auto-indent new lines smartly
opt.autoindent = true

-- UI tweaks
opt.cursorline = true        -- highlight current line
opt.signcolumn = "yes"       -- always show sign column (gutter)
opt.scrolloff = 8            -- keep 8 lines above/below when scrolling
opt.colorcolumn = "100"      -- guide for max code width
opt.termguicolors = true     -- enable true color support
opt.wrap = false             -- disable line wrap

-- Search
opt.ignorecase = true        -- case-insensitive search...
opt.smartcase = true         -- ...unless you use capitals

-- Clipboard
opt.clipboard = "unnamedplus" -- use system clipboard

-- Undo
opt.undofile = true           -- persistent undo
opt.swapfile = false          -- disable swap files
opt.backup = false            -- disable backup files

-- Mouses
opt.mouse = "a"              -- enable mouse support

-- Performance
opt.updatetime = 300         -- faster completion
opt.timeoutlen = 500         -- faster key timeout
opt.lazyredraw = true        -- improve performance on long outputs

-- Splits
opt.splitbelow = true        -- open horizontal split below
opt.splitright = true        -- open vertical split to the right

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 150 })
  end,
})

-- Toggle spell checking with <leader>ss
vim.keymap.set("n", "<leader>ss", function()
  vim.opt.spell = not vim.opt.spell:get()
end, { desc = "Toggle Spell Check" })

