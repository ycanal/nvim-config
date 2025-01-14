return {
	-- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	event = { "VeryLazy" },
	build = ":TSUpdate",
	init = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "go", "javascript", "lua", "rust", "typescript", "vimdoc" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		})
	end,
}
