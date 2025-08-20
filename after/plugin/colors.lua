-- ~/.config/nvim/after/plugin/colors.lua

-- Theme list
local themes = { "dracula", "basic" }
local current = 1

-- Dracula theme
function ColorMyPencils()
    vim.cmd.colorscheme("dracula")
    -- No transparency for dracula
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Custom basic black theme
function BasicBlack()
    vim.cmd.colorscheme("default")
    vim.opt.background = "dark"
    vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#00ff00" })  -- green keywords (int, etc.)
    vim.api.nvim_set_hl(0, "Number", { fg = "#ff0000" })   -- red numbers
    vim.api.nvim_set_hl(0, "Function", { fg = "#55ffff" }) -- cyan functions
    vim.api.nvim_set_hl(0, "String", { fg = "#ffff55" })   -- yellow strings
    vim.api.nvim_set_hl(0, "Comment", { fg = "#888888", italic = true }) -- grey comments
end

-- Toggle function
function ToggleTheme()
    current = current + 1
    if current > #themes then current = 1 end

    if themes[current] == "dracula" then
        ColorMyPencils()
    else
        BasicBlack()
    end

    print("Theme switched to: " .. themes[current])
end

-- Map Shift + T to toggle
vim.api.nvim_set_keymap('n', '<S-T>', ':lua ToggleTheme()<CR>', { noremap = true, silent = true })

-- Apply default theme on startup
ColorMyPencils()

