-- return {
-- 	"loctvl842/monokai-pro.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("monokai-pro").setup({
-- 			overridePalette = function(filter)
-- 				return {
-- 					background = "#1A1B26",
-- 					text = "#f2f2f2",
-- 				}
-- 			end,
-- 		})
-- 		vim.cmd("colorscheme monokai-pro")
-- 	end,
-- }

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		vim.cmd("colorscheme tokyonight-night")
	end,
}
