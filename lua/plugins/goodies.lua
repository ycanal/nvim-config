return {
    'ThePrimeagen/vim-be-good',            -- type :VimBeGood to train motions
    {
        "Eandrju/cellular-automaton.nvim", -- fun stuff
        keys = {
            { "<leader>fml", function() vim.cmd.CellularAutomaton("make_it_rain") end }
        }
    }
}
