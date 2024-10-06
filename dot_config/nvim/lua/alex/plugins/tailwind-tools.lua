return {
	"luckasRanarison/tailwind-tools.nvim",
	event = { "BufReadPre", "BufNewFile" },
	name = "tailwind-tools",
	build = ":UpdateRemotePlugins",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"neovim/nvim-lspconfig", -- optional
	},
	config = function()
		require("tailwind-tools").setup({})

		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>bt", "<cmd>TailwindSort<cr>", { desc = "Sort tailwind classes in document" })
	end,
}
