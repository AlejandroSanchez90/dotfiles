return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({
			keymap = {
				builtin = {
					["<F1>"] = "toggle-help",
					["<F2>"] = "toggle-fullscreen",
					-- Only valid with the 'builtin' previewer
					["<F3>"] = "toggle-preview-wrap",
					["<F4>"] = "toggle-preview",
					["<F5>"] = "toggle-preview-ccw",
					["<F6>"] = "toggle-preview-cw",
					["<C-d>"] = "preview-page-down",
					["<C-u>"] = "preview-page-up",
					["<S-left>"] = "preview-page-reset",
				},
				fzf = {
					["ctrl-z"] = "abort",
					["ctrl-f"] = "half-page-down",
					["ctrl-b"] = "half-page-up",
					["ctrl-a"] = "beginning-of-line",
					["ctrl-e"] = "end-of-line",
					["alt-a"] = "toggle-all",
					-- Only valid with fzf previewers (bat/cat/git/etc)
					["f3"] = "toggle-preview-wrap",
					["f4"] = "toggle-preview",
					["ctrl-d"] = "preview-page-down",
					["ctrl-u"] = "preview-page-up",
					["ctrl-q"] = "select-all+accept",
				},
			},
		})

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>FzfLua files --keep-right<cr>", { desc = "Find files in cwd" })
		keymap.set("n", "<leader>fdd", "<cmd>FzfLua diagnostics_document<cr>", { desc = "Diagnostic Document" })
		keymap.set("n", "<leader>fdw", "<cmd>FzfLua diagnostics_workspace<cr>", { desc = "Diagnostic Workspace" })
		keymap.set("n", "<leader>fh", "<cmd>FzfLua oldfiles<cr>", { desc = "Find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>FzfLua live_grep_glob --keep-right<cr>", { desc = "Find string in cwd" })
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>FzfLua grep_cword rg_glob=true<cr>",
			{ desc = "Find string under cursor in cwd" }
		)
		keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
		keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<cr>", { desc = "Find resume" })
		keymap.set("n", "<leader>fq", "<cmd>FzfLua quickfix<cr>", { desc = "Find quickfix" })
		keymap.set("n", "<leader>fg", function()
			require("fzf-lua").grep({
				raw_cmd = [[git diff --name-only | xargs rg --hidden --column --line-number --no-heading --color=always --with-filename -e '']],
			})
		end, { desc = "Grep changed files" })
	end,
}
