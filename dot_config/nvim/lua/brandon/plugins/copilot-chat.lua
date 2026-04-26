return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		enabled = false,
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		-- See Commands section for default commands if you want to lazy load on them
		config = function(_, opts)
			local chat = require("CopilotChat")
			chat.setup(opts)

			-- copilot chat keys binds
			local keymap = vim.keymap

			keymap.set({ "n" }, "<leader>cp", "<cmd>CopilotChatOpen<cr>", { desc = "Open AI (Copilot) Chat" })
		end,
	},
}
