local M = {}

local theme_file = vim.fn.stdpath("config") .. "/.last_colorscheme"

-- Save + apply colorscheme
function M.set(name)
    vim.cmd.colorscheme(name)
    vim.fn.writefile({ name }, theme_file)
    vim.notify("Colorscheme set to: " .. name, vim.log.levels.INFO)
end

-- Load last theme on startup
function M.load()
    local ok, theme = pcall(function()
        return vim.fn.readfile(theme_file)[1]
    end)
    if ok and theme then
        pcall(vim.cmd.colorscheme, theme)
    end
end

return M
