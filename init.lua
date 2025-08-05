-- ~/.config/nvim/init.lua
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- Load core config
require('tadeyemo32.packer')  -- Must load first
require('tadeyemo32.set')
require('tadeyemo32.remap')

-- Initialize Packer
vim.cmd([[autocmd User PackerComplete echo "Packer setup complete!"]])
