return {
    'NeogitOrg/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim', -- required
        'sindrets/diffview.nvim', -- optional - Diff integration
        -- Only one of these is needed.
        'nvim-telescope/telescope.nvim', -- optional
        'ibhagwan/fzf-lua', -- optional
        'echasnovski/mini.pick', -- optional
    },
    config = function()
        local neogit = require 'neogit'
        neogit.setup {
            kind = 'vsplit',
            integrations = {
                diffview = true,
            },
            -- Automatically open the diff view when opening Neogit
            auto_show_console = true,
            console_timeout = 2000,
            -- Custom status buffer configuration
            status = {
                recent_commit_count = 10,
            },
            -- Customize sections
            sections = {
                untracked = {
                    folded = false,
                    hidden = false,
                },
                unstaged = {
                    folded = false,
                    hidden = false,
                },
                staged = {
                    folded = false,
                    hidden = false,
                },
            },
            -- Disable line numbers in Neogit buffers
            disable_line_numbers = true,
            -- File watcher configuration
            filewatcher = {
                interval = 100,
                enabled = true,
            },
            -- Mappings
            mappings = {
                -- Modify the push mapping to return to neo-tree
                push = function(popup)
                    neogit.push(popup)
                    vim.defer_fn(function()
                        vim.cmd 'Neotree reveal'
                    end, 1000) -- Adjust the delay as needed
                end,
            },
        }
    end,
    keys = {
        { '<leader>g', ':Neogit kind=vsplit<CR>', desc = 'Neogit' },
        { '<leader>gc', ':Neogit commit<CR>', desc = 'Neogit Commit' },
        { '<leader>gp', ':Neogit push<CR>', desc = 'Neogit Push' },
    },
}
