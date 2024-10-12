return {
    'mistricky/codesnap.nvim',
    version = '^1',
    build = 'make build_generator',
    keys = {
        {
            '<leader>cc',
            '<cmd>CodeSnap<cr>',
            mode = 'x',
            desc = 'Save selected code snapshot into clipboard',
        },
        {
            '<leader>cs',
            '<cmd>CodeSnapSave<cr>',
            mode = 'x',
            desc = 'Save selected code snapshot in ~/Pictures/CodeSnap',
        },
    },
    opts = {
        save_path = '~/Pictures/CodeSnap',
        code_font_family = 'RobotoMono Nerd Font',
        has_breadcrumbs = true,
        bg_theme = 'sea',
        has_line_number = true,
        watermark = "Ben O'Mahony",
    },
}
