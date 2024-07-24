return {
	"dense-analysis/ale",
	config = function()
		local g = vim.g

		-- Enable linting for ESLint and TSLint
		g.ale_linters = {
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
			typescript = { "eslint", "tslint" },
			typescriptreact = { "eslint", "tslint" },
		}

		-- Enable fixing of issues automatically (optional)
		g.ale_fix_on_save = 1

		-- Use specific linters for various file types
		g.ale_javascript_eslint_executable = "eslint"
		g.ale_javascript_eslint_options = "-c .eslintrc.js"

		g.ale_typescript_eslint_executable = "eslint"
		g.ale_typescript_eslint_options = "-c .eslintrc.js"

		g.ale_typescript_tslint_executable = "tslint"
		g.ale_typescript_tslint_options = "-c tslint.json"

		-- Optionally, enable auto-fix for eslint
		g.ale_fixers = {
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
		}

		-- Enable linting on text changes
		g.ale_lint_on_text_changed = "always"

		-- Use quickfix list instead of location list
		g.ale_set_quickfix = 1
	end,
}
