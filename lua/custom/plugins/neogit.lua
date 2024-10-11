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
    kind = 'auto',
    keys = {
        { '<leader>g', ':Neogit kin<CR>', desc = 'Neogit' },
        { '<leader>gc', ':Neogit commit<CR>', desc = 'Neogit Commit' },
        { '<leader>gp', ':Neogit push<CR>', desc = 'Neogit Push' },
    },
    filewatcher = {
        interval = 100,
        enabled = true,
    },
    integrations = {
        telescope = true,
        diffview = true,
        fzf_lua = true,
    },
    disable_line_numbers = true,
}
