return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
    },
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    config = function()
        require("nvim-tree").setup({
            hijack_netrw = false,
            disable_netrw = false,
            open_on_tab = false,
            update_focused_file = {
                enable = true,
            },
        })
    end,
}
