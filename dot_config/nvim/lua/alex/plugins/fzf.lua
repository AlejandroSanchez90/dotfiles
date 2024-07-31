return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		local fzf = require("fzf-lua").setup({})

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>fmf", "<cmd>lua require'fzf-lua'.files()<CR>", { desc = "FZF Files" })
		keymap.set("n", "<leader>fms", "<cmd>lua require'fzf-lua'.live_grep()<CR>", { desc = "FZF Grep" })
	end,
}
