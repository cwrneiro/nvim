return {
	{
		"mbbill/undotree",
		cmd = "UndotreeToggle",
		keys = {
			{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle undotree" },
		},
	},
	{
		"Pocco81/true-zen.nvim",
		cmd = { "TZAtaraxis", "TZMinimalist", "TZFocus", "TZNarrow" },
		keys = {
			{ "<leader>zn", "<cmd>TZNarrow<cr>", mode = { "n", "v" }, desc = "Narrow focus" },
			{ "<leader>zf", "<cmd>TZFocus<cr>", desc = "Focus mode" },
			{ "<leader>zm", "<cmd>TZMinimalist<cr>", desc = "Minimalist mode" },
			{ "<leader>za", "<cmd>TZAtaraxis<cr>", desc = "Ataraxis mode" },
		},
	},
	{
		"Pocco81/auto-save.nvim",
		event = { "InsertLeave", "TextChanged" },
		keys = {
			{ "<leader>n", "<cmd>ASToggle<cr>", desc = "Toggle auto-save" },
		},
	},
	{
		"voldikss/vim-floaterm",
		cmd = { "FloatermNew", "FloatermToggle", "FloatermKill", "FloatermNext", "FloatermPrev" },
		keys = {
			{ "<F7>", "<cmd>FloatermToggle<cr>", desc = "Toggle terminal" },
			{ "<leader>gg", "<cmd>FloatermNew zsh<cr>", desc = "New terminal" },
		},
	},
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"catgoose/nvim-colorizer.lua",
		config = function ()
			require("colorizer").setup()
		end
	}
}
