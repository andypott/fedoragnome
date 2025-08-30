return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		branch = "main",
		config = function()
			require("nvim-treesitter").install({
				"asm",
				"bash",
				"c",
				"c_sharp",
				"cpp",
				"javascript",
				"typescript",
			})
		end,
	},
}
