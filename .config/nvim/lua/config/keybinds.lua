vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set({ "n", "i", "v" }, "<leader>q", "<Esc>:wq<CR>", { desc = "Save and quit" })

vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<Esc>:w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>Q", ":q!<CR>", { desc = "Quit without saving" })


-- Move lines with Ctrl+j / Ctrl+k

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })


vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })


-- Toggle right-side vertical terminal
local term_buf = nil
local term_win = nil

local function toggle_terminal()
    -- If terminal window is open → close it
    if term_win and vim.api.nvim_win_is_valid(term_win) then
        vim.api.nvim_win_close(term_win, true)
        term_win = nil
        return
    end

    -- If buffer exists but window is closed → reopen it
    if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
        vim.cmd("vsplit")
        vim.cmd("wincmd L")
        vim.api.nvim_set_current_buf(term_buf)
        vim.cmd("startinsert")
        term_win = vim.api.nvim_get_current_win()
        return
    end

    -- Otherwise → create new terminal
    vim.cmd("vsplit")
    vim.cmd("wincmd L")
    vim.cmd("terminal")
    vim.cmd("startinsert")
    term_win = vim.api.nvim_get_current_win()
    term_buf = vim.api.nvim_get_current_buf()
end

-- Keymaps (normal + terminal mode)
vim.keymap.set("n", "<leader>t", toggle_terminal, { desc = "Toggle right vertical terminal" })
vim.keymap.set("t", "<leader>t", function()
    vim.cmd("stopinsert") -- escape insert mode first
    toggle_terminal()
end, { desc = "Toggle right vertical terminal" })
