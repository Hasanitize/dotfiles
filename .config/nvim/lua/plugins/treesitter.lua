return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            autotags = { enable = true },
            ensure_installed = {
                "lua",
                "java",
                "cpp",
            },
            auto_install = false,

        })
    end
}
