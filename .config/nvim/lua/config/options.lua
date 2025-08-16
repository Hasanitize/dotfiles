-- Case-insensitive searching unless uppercase used
vim.opt.ignorecase = true -- Ignore case in search patterns
vim.opt.smartcase = true  -- Override 'ignorecase' if search contains uppercase

-- Search behavior
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = true  -- Highlight search matches

-- Line numbers
vim.opt.number = true         -- Show absolute line number
vim.opt.relativenumber = true -- Show relative line numbers

-- Cursor behavior
vim.opt.cursorline = true -- Highlight the current line

-- Tabs and indentation
vim.opt.tabstop = 4        -- 1 tab = 4 spaces
vim.opt.shiftwidth = 4     -- Indent by 4 spaces
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.autoindent = true  -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Smart autoindent when starting new lines

-- Scrolling
vim.opt.scrolloff = 8     -- Keep 8 lines visible above/below the cursor
vim.opt.sidescrolloff = 8 -- Same for horizontal scrolling

-- Better UI
vim.opt.signcolumn = "yes"   -- Always show the sign column (for git/LSP info)
vim.opt.termguicolors = true -- Enable true color support
vim.opt.wrap = false         -- Disable line wrap
vim.opt.linebreak = true     -- Break lines at word boundaries if wrap is on

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard

-- File and buffer settings
vim.opt.hidden = true   -- Allow switching buffers without saving
vim.opt.autoread = true -- Automatically read changed files

-- Performance
vim.opt.updatetime = 300  -- Time in ms to trigger CursorHold and LSP updates
vim.opt.lazyredraw = true -- Don't redraw while executing macros

-- Command line
vim.opt.showcmd = true   -- Show command in bottom bar
vim.opt.showmode = false -- Don't show mode (handled by plugins like lualine)

-- Wildmenu (completion for command mode)
vim.opt.wildmenu = true  -- Enable command-line completion menu
vim.opt.swapfile = false -- Disable the swap file
-- vim.api.nvim_set_hl(0, "OilDir", { fg = "#fc9867" })  -- Directory (Ristretto orange)
-- vim.api.nvim_set_hl(0, "OilFile", { fg = "#fcfcfa" }) -- File name (white)
