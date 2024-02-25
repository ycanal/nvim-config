return {
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    { -- Comment region using gc
        'numToStr/Comment.nvim',
        opts = {}
    },

    { -- Highlight todo, notes, etc in comments
        'folke/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false },
    },

    { -- Use TreeSitter to show scope
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },

    { -- visualizes the undo history and makes it easy to browse
        "mbbill/undotree",
        keys = {
            { "<leader>u", vim.cmd.UndotreeToggle }
        }
    },

    { -- notifications and LSP progress messages
        "j-hui/fidget.nvim",
        opts = {
        },
    },

    { -- Collection of various small independent plugins/modules
        'echasnovski/mini.nvim',
        config = function()
            -- Better Around/Inside textobjects
            --
            -- Examples:
            --  - va)  - [V]isually select [A]round [)]parenthen
            --  - yinq - [Y]ank [I]nside [N]ext [']quote
            --  - ci'  - [C]hange [I]nside [']quote
            require('mini.ai').setup { n_lines = 500 }

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require('mini.surround').setup()

            -- Simple and easy statusline.
            --  You could remove this setup call if you don't like it,
            --  and try some other statusline plugin
            require('mini.statusline').setup()

            -- ... and there is more!
            --  Check out: https://github.com/echasnovski/mini.nvim
        end,
    },
}
