return {
	-- You can easily change to a different colorscheme.
	-- Change the name of the colorscheme plugin below, and then
	-- change the command in the config to whatever the name of that colorscheme is.
	--
	"catppuccin/nvim",
	-- "olimorris/onedarkpro.nvim",
	-- "navarasu/onedark.nvim",
	priority = 1000, -- Make sure to load this before all the other start plugins.

	config = function(_, opts)
		opts = {
			no_italic = true,
			-- styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
			-- 	comments = { "italic" }, -- Change the style of comments
			-- 	conditionals = {},
			-- 	loops = {},
			-- 	functions = {},
			-- 	keywords = {},
			-- 	strings = {},
			-- 	variables = {},
			-- 	numbers = {},
			-- 	booleans = {},
			-- 	properties = { "italic" },
			-- 	types = {},
			-- 	operators = {},
			-- 	-- miscs = {}, -- Uncomment to turn off hard-coded styles
			-- },
			integrations = {
				cmp = true,
				gitsigns = true,
				indent_blankline = { enabled = true },
				-- lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				-- neotest = true,
				-- neotree = true,
				-- noice = true,
				-- notify = true,
				semantic_tokens = true,
				telescope = true,
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		}
		require("catppuccin").setup(opts)
		-- vim.cmd([[colorscheme onedark]])
		-- same as above
		-- vim.cmd.colorscheme("onedark")
		-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}

-- return {
-- 	-- You can easily change to a different colorscheme.
-- 	-- Change the name of the colorscheme plugin below, and then
-- 	-- change the command in the config to whatever the name of that colorscheme is.
-- 	--
-- 	-- "catppuccin/nvim",
-- 	-- "olimorris/onedarkpro.nvim",
-- 	"navarasu/onedark.nvim",
-- 	priority = 1000, -- Make sure to load this before all the other start plugins.
-- 	config = function()
-- 		-- vim.cmd([[colorscheme onedark]])
-- 		-- same as above
-- 		-- vim.cmd.colorscheme("onedark")
-- 		vim.cmd.colorscheme("onedark")
-- 		-- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
-- 		-- vim.cmd.colorscheme("catppuccin-mocha")
-- 	end,
-- }
