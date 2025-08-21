return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~ colorscheme picker ~~~~~~~~~~~~~~~~~~~~~~~~~~~
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")
        local colorscheme_utils = require("utils.colorscheme")

        -- custom picker with persistence
        local function pick_colorscheme()
            require("telescope.builtin").colorscheme({
                enable_preview = true,
                attach_mappings = function(_, map)
                    map("i", "<CR>", function(prompt_bufnr)
                        local entry = action_state.get_selected_entry()
                        if entry then
                            colorscheme_utils.set(entry.value)
                        end
                        actions.close(prompt_bufnr)
                    end)
                    return true
                end,
            })
        end

        -- Keymap
        vim.keymap.set("n", "<leader>tc", pick_colorscheme, { desc = "Pick & Save Colorscheme" })
    end
}
