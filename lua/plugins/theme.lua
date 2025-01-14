return {
	"catppuccin/nvim",
	name = "catpuccin",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
