-- ~/.config/nvim/init.lua
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- Load core config
require('tadeyemo32.packer')  -- Must load first
require('tadeyemo32.set')
require('tadeyemo32.remap')

-- Initialize Packer
vim.cmd([[autocmd User PackerComplete echo "Packer setup complete!"]])


vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("n", "<leader>w", "<cmd>wa | echo 'All files saved!'<CR>", { desc = "Save all buffers" })
keymap("n", "<leader>q", "<cmd>qa<CR>", { desc = "Quit all buffers" })

