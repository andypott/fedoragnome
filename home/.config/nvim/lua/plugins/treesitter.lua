return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		branch = "main",
		commit = "90cd6580e720caedacb91fdd587b747a6e77d61f",
		config = function()
			require("nvim-treesitter").install({
				"asm",
				"bash",
				"c",
				"c_sharp",
				"cpp",
				"css",
				"javascript",
				"json",
				"lua",
				"make",
				"odin",
				"typescript",
			})
		end,
	},
}
