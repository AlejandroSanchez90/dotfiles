return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "File" },
			{ "<leader>g", group = "Git" },
			{ "<leader>gc", group = "Copilot Github" },
			{ "<leader>b", group = "Buffers" },
			{ "<leader>e", group = "Explorer" },
			{ "<leader>c", group = "Code" },
			{ "<leader>s", group = "Split" },
			{ "<leader>r", group = "Refactor" },
			{ "<leader>t", group = "Tabs" },
			{ "<leader>x", group = "Diagnostics" },
			{ "<leader>w", group = "Workspace" },
			{ "<leader>h", group = "Hunks Git" },
			{ "<leader>o", group = "Operators" },
		})
	end,
}
