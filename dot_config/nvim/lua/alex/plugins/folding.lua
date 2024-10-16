return {
	"kevinhwang91/nvim-ufo",
	event = { "VeryLazy" },
	dependencies = { "kevinhwang91/promise-async" },
	config = function()
		vim.o.foldcolumn = "0" -- '0' is not bad
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true

		-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
		vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "test" })
		vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

		-- local winid = require("ufo").peekFoldedLinesUnderCursor()
		-- if not winid then
		-- 	vim.lsp.buf.hover()
		-- end
		require("ufo").setup({
			provider_selector = function(bufnr, filetype, buftype)
				return { "lsp", "indent" }
			end,
		})
	end,
}
