return {
	"williamboman/mason.nvim",

	build = ":MasonUpdate",

	config = function()
		require("mason").setup({})

		local mason_registry = require("mason-registry")

		local formatters = {
			"goimports",
			"prettier",
			"stylua",
		}

		local lsps = {
			"typescript-language-server",
			"lua-language-server",
			"ols",
		}

		function ensure_installed()
			for _, package in ipairs(formatters) do
				if not mason_registry.is_installed(package) then
					mason_registry.get_package(package):install()
				end
			end

			for _, package in ipairs(lsps) do
				if not mason_registry.is_installed(package) then
					mason_registry.get_package(package):install()
				end
			end
		end

		mason_registry.refresh(ensure_installed)
	end,
}
