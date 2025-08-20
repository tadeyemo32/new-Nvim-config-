local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- Ensure Telescope is installed and loaded
local builtin = require('telescope.builtin')

-- Map leader + rg to prompt input and run live_grep
vim.keymap.set('n', '<leader>rg', function()
    vim.ui.input({ prompt = "Search for > " }, function(input)
        if input then
            builtin.live_grep({ default_text = input })
        end
    end)
end, { noremap = true, silent = true })

