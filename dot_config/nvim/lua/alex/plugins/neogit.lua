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

		keymap.set(
			"n",
			"<leader>gdl",
			"<cmd>DiffviewFileHistory % --base=LOCAL<cr>",
			{ desc = "Open Git diff view on current file locally" }
		)

		--DiffviewFileHistory % --base=LOCAL
	end,
}
