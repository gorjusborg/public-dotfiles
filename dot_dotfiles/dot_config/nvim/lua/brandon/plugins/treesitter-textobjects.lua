-- the following is a lazy.nvim config for nvim-treesitter-textobjects
return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	branch = "main",
	after = "nvim-treesitter/nvim-treesitter",
	init = function()
		vim.g.no_plugin_maps = true -- disable built-in ftplugin mappings to avoid conflicts
	end,
	config = function()
		require("nvim-treesitter-textobjects").setup({
			select = {
				lookahead = true,
			},
		})
	end,
}
