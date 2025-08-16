return {
    ----------------------------- GRUVBOX --------------------------
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         -- Default options:
    --         require("gruvbox").setup({
    --             terminal_colors = true, -- add neovim terminal colors
    --             undercurl = true,
    --             underline = true,
    --             bold = true,
    --             italic = {
    --                 strings = true,
    --                 emphasis = true,
    --                 comments = true,
    --                 operators = false,
    --                 folds = true,
    --             },
    --             strikethrough = true,
    --             invert_selection = false,
    --             invert_signs = false,
    --             invert_tabline = false,
    --             inverse = true, -- invert background for search, diffs, statuslines and errors
    --             contrast = "",  -- can be "hard", "soft" or empty string
    --             palette_overrides = {},
    --             overrides = {},
    --             dim_inactive = false,
    --             transparent_mode = false,
    --         })
    --         vim.cmd("colorscheme gruvbox")
    --         vim.cmd("colorscheme gruvbox")
    --     end,
    -- },
    --------------------------- ROSE PINE -----------------------------------

    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     config = function()
    --         require("rose-pine").setup({
    --             variant = "moon",      -- auto, main, moon, or dawn
    --             dark_variant = "main", -- main, moon, or dawn
    --             dim_inactive_windows = false,
    --             extend_background_behind_borders = true,
    --
    --             enable = {
    --                 terminal = true,
    --                 legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    --                 migrations = true,        -- Handle deprecated options automatically
    --             },
    --
    --             styles = {
    --                 bold = true,
    --                 italic = true,
    --                 transparency = false,
    --             },
    --
    --             groups = {
    --                 border = "muted",
    --                 link = "iris",
    --                 panel = "surface",
    --
    --                 error = "love",
    --                 hint = "iris",
    --                 info = "foam",
    --                 note = "pine",
    --                 todo = "rose",
    --                 warn = "gold",
    --
    --                 git_add = "foam",
    --                 git_change = "rose",
    --                 git_delete = "love",
    --                 git_dirty = "rose",
    --                 git_ignore = "muted",
    --                 git_merge = "iris",
    --                 git_rename = "pine",
    --                 git_stage = "iris",
    --                 git_text = "rose",
    --                 git_untracked = "subtle",
    --
    --                 h1 = "iris",
    --                 h2 = "foam",
    --                 h3 = "rose",
    --                 h4 = "gold",
    --                 h5 = "pine",
    --                 h6 = "foam",
    --             },
    --
    --             palette = {
    --                 -- Override the builtin palette per variant
    --                 -- moon = {
    --                 --     base = '#18191a',
    --                 --     overlay = '#363738',
    --                 -- },
    --             },
    --
    --             -- NOTE: Highlight groups are extended (merged) by default. Disable this
    --             -- per group via `inherit = false`
    --             highlight_groups = {
    --                 -- Comment = { fg = "foam" },
    --                 -- StatusLine = { fg = "love", bg = "love", blend = 15 },
    --                 -- VertSplit = { fg = "muted", bg = "muted" },
    --                 -- Visual = { fg = "base", bg = "text", inherit = false },
    --             },
    --
    --             before_highlight = function(group, highlight, palette)
    --                 -- Disable all undercurls
    --                 -- if highlight.undercurl then
    --                 --     highlight.undercurl = false
    --                 -- end
    --                 --
    --                 -- Change palette colour
    --                 -- if highlight.fg == palette.pine then
    --                 --     highlight.fg = palette.foam
    --                 -- end
    --             end,
    --         })
    --         vim.cmd("colorscheme rose-pine")
    --     end
    -- },

    -------------------------- EVERFOREST ------------------------------

    -- "neanias/everforest-nvim",

    -------------------------- CATPPUCCIN ------------------------------
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "auto", -- latte, frappe, macchiato, mocha
                background = {    -- :h background
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = false, -- disables setting the background color.
                float = {
                    transparent = false,        -- enable transparent floating windows
                    solid = false,              -- use solid styling for floating windows, see |winborder|
                },
                show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
                term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
                dim_inactive = {
                    enabled = false,            -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15,          -- percentage of the shade to apply to the inactive window
                },
                no_italic = false,              -- Force no italic
                no_bold = false,                -- Force no bold
                no_underline = false,           -- Force no underline
                styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { "italic" },    -- Change the style of comments
                    conditionals = { "italic" },
                    loops = { "italic" },
                    functions = { "bold" },
                    keywords = { "bold" },
                    strings = { "italic" },
                    variables = { "italic" },
                    numbers = {},
                    booleans = { "bold" },
                    properties = {},
                    types = {},
                    operators = {},
                    -- miscs = {}, -- Uncomment to turn off hard-coded styles
                },
                color_overrides = {},
                custom_highlights = {},
                default_integrations = true,
                auto_integrations = false,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = false,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            vim.cmd.colorscheme "catppuccin"
        end,
    },


    --------------------------- TOKYONIGHT --------------------------------

    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,    -- load immediately
    --     priority = 1000, -- load before other plugins
    --     config = function()
    --         require("tokyonight").setup({
    --             style = "moon",
    --             transparent = true,
    --             terminal_colors = true,
    --             styles = {
    --                 sidebars = "transparent",
    --                 floats = "transparent",
    --             },
    --             lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
    --             on_highlights = function(highlights, colors)
    --                 highlights.Function             = { fg = colors.blue, bold = true }
    --                 highlights.Boolean              = { fg = colors.orange, bold = true }
    --                 highlights.Keyword              = { fg = colors.magenta, bold = true }
    --                 highlights.Type                 = { fg = colors.yellow, bold = true }
    --                 highlights.Constant             = { fg = colors.cyan, bold = true }
    --
    --                 -- Treesitter-aware highlights (language-wide)
    --                 highlights["@function"]         = { fg = colors.blue, bold = true }
    --                 highlights["@function.builtin"] = { fg = colors.cyan, bold = true }
    --                 highlights["@boolean"]          = { fg = colors.orange, bold = true }
    --                 highlights["@keyword"]          = { fg = colors.magenta, bold = true }
    --                 highlights["@type"]             = { fg = colors.yellow, bold = true }
    --                 highlights["@constant"]         = { fg = colors.orange, bold = true }
    --             end,
    --         })
    --         vim.cmd("colorscheme tokyonight")
    --     end,
    -- },
    --

    -------------------------- SONOKAI -----------------------------------

    -- {
    --     "sainnhe/sonokai",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.g.sonokai_style = "andromeda"
    --         vim.g.sonokai_enable_italic = 1
    --         vim.g.sonokai_transparent_background = 1
    --         vim.g.sonokai_disable_terminal_colors = 0
    --         vim.cmd.colorscheme("sonokai")
    --     end,
    -- },

    --------------------------- LUALINE ---------------------------------
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "catppuccin",
                }
            })
        end
    }
}
