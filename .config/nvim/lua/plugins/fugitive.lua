return {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" },
    keys = {
        { "<leader>gs", "<cmd>Git<CR>",        desc = "Git Status" },
        { "<leader>gd", "<cmd>Gdiffsplit<CR>", desc = "Git Diff (split)" },
        { "<leader>gb", "<cmd>Git blame<CR>",  desc = "Git Blame" },
        { "<leader>gl", "<cmd>Git log<CR>",    desc = "Git Log" },
        { "<leader>gp", "<cmd>Git push<CR>",   desc = "Git Push" },
        { "<leader>gP", "<cmd>Git pull<CR>",   desc = "Git Pull" },
        { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit" },
        { "<leader>ga", "<cmd>Git add .<CR>",  desc = "Git Add All" },
    },
}
