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
    config = true,
    keys = {
        { '<leader>g', ':Neogit<CR>', desc = 'Neogit' },
        { '<leader>gc', ':Neogit commit<CR>', desc = 'Neogit Commit' },
        { '<leader>gp', ':Neogit push<CR>', desc = 'Neogit Push' },
    },
}
