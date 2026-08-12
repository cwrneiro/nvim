return {
	{
		"mbbill/undotree",
		cmd = "UndotreeToggle",
		keys = {
			{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Toggle undotree" },
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
