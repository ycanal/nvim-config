return {
	'sainnhe/gruvbox-material',
	name = 'gruvbox-material',
    priority = 1000,
	init = function()
        vim.opt.termguicolors = true
		vim.cmd.colorscheme 'gruvbox-material'

        vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "None" })
    end,
}
