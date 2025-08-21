return {
    'nvim-treesitter/nvim-treesitter',
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
                -- disable = { "xresources" }
            },
            indent = { enable = true },
            autotags = { enable = true },
            ensure_installed = {
                "lua",
                "java",
                "bash",
                "fish",
            },
            auto_install = false,

        })
        -- use bash parser for zsh files
        vim.treesitter.language.register("bash", "zsh")
    end
}
