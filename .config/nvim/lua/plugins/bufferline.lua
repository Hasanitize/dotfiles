return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        vim.opt.termguicolors = true
        vim.opt.hidden = true

        require("bufferline").setup({
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                mode = "buffers", -- 👈 ensures all buffers are shown
                numbers = "none",
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                always_show_bufferline = true,
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        })

        -- 🔑 Keymaps
        vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
        vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
    end,
}
