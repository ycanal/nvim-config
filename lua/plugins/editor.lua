return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "j-hui/fidget.nvim",
        opts = {
        },
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
        },
        keys = {
            {'<leader>tt', function() require("trouble").toggle() end},
        }
    },
}
