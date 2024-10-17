return {
	"nvim-pack/nvim-spectre",
	build = false,
	cmd = "Spectre",
	opts = { open_cmd = "noswapfile vnew" },
  -- stylua: ignore
  keys = {
    { "<leader>sw", function() require("spectre").toggle() end, desc = "Search and replace workspace" },
    { "<leader>sd", function() require("spectre").toggle_file_search() end, desc = "Search and replace current document" },
  },
}
