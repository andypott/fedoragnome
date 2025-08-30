vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("first_run")
require("lazy").setup({ spec = { import = "plugins" }, { checker = { enabled = true, notify = false } } })
require("options")
require("mappings")

vim.lsp.enable({ "luals", "tsls" })
