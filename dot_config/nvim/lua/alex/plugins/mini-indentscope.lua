return {
	"echasnovski/mini.indentscope",
	version = "*",
	config = function()
		local mini = require("mini.indentscope")
		mini.setup({
			draw = {
				animation = mini.gen_animation.none(),
			},
			symbol = "│",
		})
	end,
}
