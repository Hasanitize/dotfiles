return {

    -- {
    --     "wittyjudge/gruvbox-material.nvim",
    --     opts = {
    --         terminalColors = true
    --     },
    -- },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ EDGE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "sainnhe/edge",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.edge_style = "aura" -- "default", "aura", "neon"
            vim.g.edge_enable_italic = 1
            vim.g.edge_disable_italic_comment = 0
            vim.g.edge_transparent_background = 0
            vim.g.edge_better_performance = 1
        end,
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GRUVBOX-MATERIAL ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        'f4z3r/gruvbox-material.nvim',
        name = 'gruvbox-material',
        lazy = false,
        priority = 1000,
        config = function()
            require('gruvbox-material').setup({
                italics = true,
                contrast = "medium",
                comments = { italics = true },
                background = { transparent = false },
                float = {
                    force_background = false,
                    background_color = nil,
                },
                signs = {
                    force_background = false,
                    background_color = nil,
                },
                customize = nil,
            })
        end,
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ DRACULA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        'maxmx03/dracula.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            ---@type dracula
            local dracula = require "dracula"

            dracula.setup({
                styles = {
                    Type = {},
                    Function = {},
                    Parameter = {},
                    Property = {},
                    Comment = {},
                    String = {},
                    Keyword = {},
                    Identifier = {},
                    Constant = {},
                },
                transparent = false,
                on_colors = function(colors, color)
                    ---@type dracula.palette
                    return {
                        -- override or create new colors
                        mycolor = "#ffffff",
                        -- mycolor = 0xffffff,
                    }
                end,
                on_highlights = function(colors, color)
                    ---@type dracula.highlights
                    return {
                        ---@type vim.api.keyset.highlight
                        Normal = { fg = colors.mycolor }
                    }
                end,
                plugins = {
                    ["nvim-treesitter"] = true,
                    ["rainbow-delimiters"] = true,
                    ["nvim-lspconfig"] = true,
                    ["nvim-navic"] = true,
                    ["nvim-cmp"] = true,
                    ["indent-blankline.nvim"] = true,
                    ["neo-tree.nvim"] = true,
                    ["nvim-tree.lua"] = true,
                    ["which-key.nvim"] = true,
                    ["dashboard-nvim"] = true,
                    ["gitsigns.nvim"] = true,
                    ["neogit"] = true,
                    ["todo-comments.nvim"] = true,
                    ["lazy.nvim"] = true,
                    ["telescope.nvim"] = true,
                    ["noice.nvim"] = true,
                    ["hop.nvim"] = true,
                    ["mini.statusline"] = true,
                    ["mini.tabline"] = true,
                    ["mini.starter"] = true,
                    ["mini.cursorword"] = true,
                    ['bufferline.nvim'] = true,
                }
            })
        end
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ KANAGAWA ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        priority = 1000,
        config = function()
            -- Default options:
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,   -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",    -- Load "wave" theme
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })

            -- setup must be called before loading
        end,
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GRUVBOX ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


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
    --     end,
    -- },
    --

    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ROSEPINE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "moon",      -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true,        -- Handle deprecated options automatically
                },

                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },

                groups = {
                    border = "muted",
                    link = "iris",
                    panel = "surface",

                    error = "love",
                    hint = "iris",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },

                palette = {
                    -- Override the builtin palette per variant
                    -- moon = {
                    --     base = '#18191a',
                    --     overlay = '#363738',
                    -- },
                },

                -- NOTE: Highlight groups are extended (merged) by default. Disable this
                -- per group via `inherit = false`
                highlight_groups = {
                    -- Comment = { fg = "foam" },
                    -- StatusLine = { fg = "love", bg = "love", blend = 15 },
                    -- VertSplit = { fg = "muted", bg = "muted" },
                    -- Visual = { fg = "base", bg = "text", inherit = false },
                },

                before_highlight = function(group, highlight, palette)
                    -- Disable all undercurls
                    -- if highlight.undercurl then
                    --     highlight.undercurl = false
                    -- end
                    --
                    -- Change palette colour
                    -- if highlight.fg == palette.pine then
                    --     highlight.fg = palette.foam
                    -- end
                end,
            })
        end
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ EVERFOREST ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    -- "neanias/everforest-nvim",


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ CATPPUCCIN ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = {     -- :h background
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
                -- custom_highlights = {},

                custom_highlights = function(colors)
                    return {
                        -- Comments (subtle but visible)
                        Comment                  = { fg = colors.lavender, style = { "italic" } },
                        --
                        --         -- Variables & Identifiers
                        ["@variable"]            = { fg = colors.teal },                        -- normal variables: neutral for balance
                        ["@variable.builtin"]    = { fg = colors.peach, style = { "italic" } }, -- builtins: peach
                        -- ["@parameter"]           = { fg = colors.sky },                         -- function parameters: sky blue
                        -- ["@field"]               = { fg = colors.teal },                        -- struct/class fields: teal
                        --         ["@property"]            = { fg = colors.green },                       -- object properties: green
                        --
                        --         -- Functions & Methods
                        --         ["@function"]            = { fg = colors.blue, style = { "bold" } },
                        --         ["@function.builtin"]    = { fg = colors.sapphire, style = { "bold" } },
                        --         ["@method"]              = { fg = colors.lavender },
                        --
                        --         -- Keywords & Operators
                        --         ["@keyword"]             = { fg = colors.mauve, style = { "italic" } },
                        --         ["@conditional"]         = { fg = colors.red, style = { "italic" } },
                        --         ["@repeat"]              = { fg = colors.maroon, style = { "italic" } },
                        --         ["@operator"]            = { fg = colors.sky },
                        --
                        --         -- Literals & Constants
                        --         ["@constant"]            = { fg = colors.flamingo },
                        --         ["@constant.builtin"]    = { fg = colors.red, style = { "bold" } },
                        --         ["@number"]              = { fg = colors.peach },
                        --         ["@boolean"]             = { fg = colors.pink, style = { "bold" } },
                        --         ["@string"]              = { fg = colors.yellow },
                        --         ["@string.escape"]       = { fg = colors.sapphire, style = { "bold" } },
                        --
                        --         -- Types, Classes, Namespaces
                        --         ["@type"]                = { fg = colors.green, style = { "bold" } },
                        --         ["@type.builtin"]        = { fg = colors.teal, style = { "italic" } },
                        --         ["@namespace"]           = { fg = colors.lavender },
                        --         ["@attribute"]           = { fg = colors.flamingo },
                        --
                        --         -- Punctuation & Brackets
                        ["@punctuation"]         = { fg = colors.overlay2 },
                        ["@punctuation.bracket"] = { fg = colors.red },
                        --
                        --         -- UI tweaks
                        CursorLineNr             = { fg = colors.pink, style = { "bold" } },
                    }
                end,
                default_integrations = true,
                auto_integrations = false,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    notify = true,
                    bufferline = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
        end,
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ TOKYONIGHT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            local transparent = false -- set to true if you would like to enable transparency

            local bg = "#011628"
            local bg_dark = "#011423"
            local bg_highlight = "#143652"
            local bg_search = "#0A64AC"
            local bg_visual = "#275378"
            local fg = "#CBE0F0"
            local fg_dark = "#B4D0E9"
            local fg_gutter = "#627E97"
            local border = "#547998"

            require("tokyonight").setup({
                style = "night",
                transparent = transparent,
                styles = {
                    sidebars = transparent and "transparent" or "dark",
                    floats = transparent and "transparent" or "dark",
                },
                on_colors = function(colors)
                    colors.bg = bg
                    colors.bg_dark = transparent and colors.none or bg_dark
                    colors.bg_float = transparent and colors.none or bg_dark
                    colors.bg_highlight = bg_highlight
                    colors.bg_popup = bg_dark
                    colors.bg_search = bg_search
                    colors.bg_sidebar = transparent and colors.none or bg_dark
                    colors.bg_statusline = transparent and colors.none or bg_dark
                    colors.bg_visual = bg_visual
                    colors.border = border
                    colors.fg = fg
                    colors.fg_dark = fg_dark
                    colors.fg_float = fg
                    colors.fg_gutter = fg_gutter
                    colors.fg_sidebar = fg_dark
                end,
            })

            vim.cmd("colorscheme tokyonight")
        end,
    },

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
    --     end,
    -- },



    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SONOKAI ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "sainnhe/sonokai",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.sonokai_style = "andromeda"
            vim.g.sonokai_enable_italic = 1
            vim.g.sonokai_transparent_background = 1
            vim.g.sonokai_disable_terminal_colors = 0
        end,
    },


    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ LUALINE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                }
            })
        end
    }
}
