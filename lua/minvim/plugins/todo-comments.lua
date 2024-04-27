-- Highlight todo, notes, etc in comments
-- TODO: test todo
return {
	"folke/todo-comments.nvim",
	-- event = "VimEnter",
	event = { "BufReadPre", "BufNewFile" }, -- feels a litte faster than VimEnter
	dependencies = { "nvim-lua/plenary.nvim" },
	-- opts = { signs = false },
	config = function()
		local todo_comments = require("todo-comments")

		-- set keymaps
		local keymap = vim.keymap

		-- TODO: test todo
		keymap.set({ "n" }, "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		-- TODO: test todo
		keymap.set({ "n" }, "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous todo comment" })

		todo_comments.setup()
	end,
}
