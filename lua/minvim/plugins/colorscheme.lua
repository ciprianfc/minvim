return {
	-- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	"catppuccin/nvim",
	-- "olimorris/onedarkpro.nvim",
	-- "navarasu/onedark.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.
	config = function()
		-- vim.cmd([[colorscheme onedark]])
		-- same as above
		-- vim.cmd.colorscheme("onedark")
		-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
