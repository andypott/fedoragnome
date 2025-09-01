return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",
			["<CR>"] = { "accept", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
			["<C-k>"] = { "select_prev", "fallback" },
		},
		signature = { enabled = true },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
}
