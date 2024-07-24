return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			-- auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
		})

		local keymap = vim.keymap
		function SaveSession()
			local session_name = vim.fn.input("Enter session name: ")
			if session_name == "" then
				print("Session name cannot be empty.")
				return
			end
			vim.cmd("SessionSave " .. session_name)
			print("Session " .. session_name .. "saved")
		end

		keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
		keymap.set("n", "<leader>wf", "<cmd>Autosession search<CR>", { desc = "Search sessions" }) -- save workspace session for current working directory
		keymap.set("n", "<leader>wd", "<cmd>Autosession delete<CR>", { desc = "Delete sessions" }) -- save workspace session for current working directory
		keymap.set("n", "<leader>wa", ":lua SaveSession()<CR>", { desc = "Save as" }) -- save workspace session for current working directory
	end,
}
