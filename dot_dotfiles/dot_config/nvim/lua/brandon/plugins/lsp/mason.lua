return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "󰄬",
					package_pending = "󰦖",
					package_uninstalled = "",
				},
			},
		})

		mason_lspconfig.setup({
			"ts_ls",
			"html",
			"cssls",
			"lua_ls",
			"emmet_ls",
			"pasls",
			"gopls",
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				{ "eslint_d", version = "13.1.2" },
				"gopls",
			},
		})
	end,
}
