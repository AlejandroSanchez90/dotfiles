return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
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
		keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Status" })

		keymap.set("n", "<leader>gdh", "<cmd>DiffviewFileHistory % --base=LOCAL<cr>", { desc = "File github history" })

		--DiffviewFileHistory % --base=LOCAL
	end,
}
