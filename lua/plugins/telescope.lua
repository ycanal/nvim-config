return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ -- If encountering errors, see telescope-fzf-native README for install instructions
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			cond = function()
				return vim.fn.executable("make") == 1
			end,
		},
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	init = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable telescope extensions, if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
	end,
	keys = {
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			{ desc = "[f]ind [b]uffer" },
		},
		{
			"<leader>fd",
			function()
				require("telescope.builtin").diagnostics()
			end,
			{ desc = "[f]ind [d]iagnostic" },
		},
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			{ desc = "[f]ind [f]ile" },
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			{ desc = "[f]ind by [g]rep" },
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			{ desc = "[f]ind [h]elp" },
		},
		{
			"<leader>fk",
			function()
				require("telescope.builtin").keymaps()
			end,
			{ desc = "[f]ind [k]eymaps" },
		},
		{
			"<leader>fr",
			function()
				require("telescope.builtin").resume()
			end,
			{ desc = "[f]ind [r]esume" },
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").builtin()
			end,
			{ desc = "[f]ind [s]elect Telescope" },
		},
		{
			"<leader>fw",
			function()
				require("telescope.builtin").grep_string()
			end,
			{ desc = "[f]ind current [w]ord" },
		},
		{
			"<leader>f.",
			function()
				require("telescope.builtin").oldfiles()
			end,
			{ desc = "[f]ind recent file ([.] for repeat)" },
		},
		{
			"<C-p>",
			function()
				require("telescope.builtin").git_files()
			end,
			{ desc = "[f]ind in [g]it" },
		},
	},
}
