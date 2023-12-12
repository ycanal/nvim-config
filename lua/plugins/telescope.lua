return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = { 
        {'<leader>ff', function() require('telescope.builtin').find_files() end},
        {'<leader>fg', function() require('telescope.builtin').live_grep() end},
        {'<leader>fb', function() require('telescope.builtin').buffers() end},
        {'<leader>fh', function() require('telescope.builtin').help_tags() end},
        {'<C-p>', function() require('telescope.builtin').git_files() end},
        {'<leader>fs', function()
            require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })
        end},
    }
}
