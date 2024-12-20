return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"MeanderingProgrammer/render-markdown.nvim",
		"nvim-tree/nvim-web-devicons",
		"norcalli/nvim-colorizer.lua",
		-- for fomatting objects
		"Wansmer/treesj",

		-- "HiPhish/rainbow-delimiters.nvim",
	},
	config = function()
		-- import nvim-treesitter plugin
		local treesitter = require("nvim-treesitter.configs")

		require("colorizer").setup({
			"*",
		})

		local treejs = require("treesj")

		treejs.setup({
			use_default_keymaps = false,
			max_join_length = 500,
		})

		vim.keymap.set("n", "<leader>rf", function()
			require("treesj").toggle({ split = { recursive = true } })
		end, { desc = "Format object properties into separate lines" })

		require("nvim-ts-autotag").setup({
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},
		})

		require("render-markdown").setup({})

		-- configure treesitter
		treesitter.setup({ -- enable syntax highlighting
			ignore_install = {},
			sync_install = false,
			auto_install = false,
			modules = {},
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				-- "svelte",
				-- "graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
