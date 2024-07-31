return {
	{

		"CopilotC-Nvim/CopilotChat.nvim",
		event = { "BufReadPre", "BufNewFile" },
		branch = "canary",
		dependencies = {
			{ "github/copilot.vim" },
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		config = function()
			local chat = require("CopilotChat")
			chat.setup({})
			local keymap = vim.keymap

			keymap.set("n", "<leader>gcc", chat.toggle, { desc = "Copilot Chat" }) -- save workspace session for current working directory
			keymap.set("n", "<leader>gcr", chat.toggle, { desc = "Copilot Chat" }) -- save workspace session for current working directory
			keymap.set("n", "<leader>gcd", "<cmd>CopilotChatFixDiagnostic<CR>", { desc = "Copilot Diagnostics" }) -- save workspace session for current working directory
			keymap.set("n", "<leader>gcf", "<cmd>CopilotChatFix<CR>", { desc = "Copilot Fix" }) -- save workspace session for current working directory
			keymap.set("n", "<leader>gcm", "<cmd>CopilotChatCommit<CR>", { desc = "Copilot Commit Message" }) -- save workspace session for current working directory
			keymap.set("n", "<leader>gch", function()
				chat.ask("Explain how it works")
			end, { desc = "Copilot How it works" }) -- save workspace session for current working directory
		end,
	},
}
