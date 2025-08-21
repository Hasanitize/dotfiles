return {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {
        toggler = {
            line = "<leader>/",
            block = "<leader><A-/>",
        },
        opleader = {
            line = "gc",
            block = "gb",
        },
        mappings = {
            basic = false, -- disable default `gcc`, `gbc`, etc.
            extra = false,
        },
    },
    keys = {
        {
            "<leader>/",
            function() require("Comment.api").toggle.linewise.current() end,
            desc = "Toggle Line Comment",
            mode = { "n", "v", "o" }
        },
        {
            "<leader><A-/>",
            function() require("Comment.api").toggle.blockwise.current() end,
            desc = "Toggle Block Comment",
            mode = { "n", "v", "o" }
        },
    },
}
