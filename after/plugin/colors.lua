-- Theme list
local themes = { "dracula", "gruvbox" }
local current = 1

-- Load last theme from file
local function load_last_theme()
    local theme_file = vim.fn.stdpath('data') .. '/last_theme.txt'
    local file = io.open(theme_file, 'r')
    if file then
        local saved_theme = file:read('*line')
        file:close()
        
        -- Find the saved theme in our themes list
        for i, theme in ipairs(themes) do
            if theme == saved_theme then
                current = i
                return theme
            end
        end
    end
    return themes[1] -- default to first theme
end

-- Save last theme to file
local function save_last_theme(theme)
    local theme_file = vim.fn.stdpath('data') .. '/last_theme.txt'
    local file = io.open(theme_file, 'w')
    if file then
        file:write(theme)
        file:close()
    end
end

-- Dracula theme
function ColorMyPencils()
    vim.cmd.colorscheme("dracula")
    -- Transparency for dracula only
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    save_last_theme("dracula")
end

-- Gruvbox theme
function GruvboxTheme()
    vim.cmd.colorscheme("gruvbox")
    vim.o.background = "dark"
    -- Or for light mode: vim.o.background = "light"
    save_last_theme("gruvbox")
end

-- Toggle function
function ToggleTheme()
    current = current + 1
    if current > #themes then current = 1 end

    if themes[current] == "dracula" then
        ColorMyPencils()
    elseif themes[current] == "gruvbox" then
        GruvboxTheme()
    end

    print("Theme switched to: " .. themes[current])
end

-- Map Shift + T to toggle
vim.api.nvim_set_keymap('n', '<S-T>', ':lua ToggleTheme()<CR>', { noremap = true, silent = true })

-- Apply saved theme on startup (or default)
local startup_theme = load_last_theme()
if startup_theme == "dracula" then
    ColorMyPencils()
elseif startup_theme == "gruvbox" then
    GruvboxTheme()
else
    ColorMyPencils() -- fallback to dracula
end
