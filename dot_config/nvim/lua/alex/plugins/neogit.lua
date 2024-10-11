return {
	"NeogitOrg/neogit",
	event = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"ibhagwan/fzf-lua",
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup({})

		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>go", "<cmd>Neogit<cr>", { desc = "Open NeoGit" })
		keymap.set("n", "<leader>gf", "<cmd>Neogit fetch<cr>", { desc = "Fetch" })
		keymap.set("n", "<leader>gb", "<cmd>Neogit branch<cr>", { desc = "Branch" })
		keymap.set("n", "<leader>gg", "<cmd>Neogit commit<cr>", { desc = "Commit" })
		keymap.set("n", "<leader>gp", "<cmd>Neogit push<cr>", { desc = "Push" })
		keymap.set("n", "<leader>gs", "<cmd>FzfLua git_status<cr>", { desc = "Status" })

		keymap.set("n", "<leader>gdh", "<cmd>DiffviewFileHistory % --base=LOCAL<cr>", { desc = "File github history" })

		--DiffviewFileHistory % --base=LOCAL
	end,
}
