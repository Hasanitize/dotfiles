return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,                     -- Load on startup to hijack netrw
    priority = 100,                   -- Ensure it loads before other plugins
    opts = {
        default_file_explorer = true, -- Fully replaces netrw
        view_options = {
            show_hidden = true,       -- Show dotfiles by default
        },
        keymaps = {
            ["u"] = "actions.parent", -- remap `u` to go up a directory
        },
    },
    keys = {
        { "<leader>cd", "<cmd>Oil<CR>", desc = "Open Oil File Explorer" },
    },
}
