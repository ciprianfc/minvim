return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	-- this is for angular--replace
	-- "dlvandenberg/nvim-treesitter",
	-- branch = "feature-angular",
	branch = "master",
	-- { "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" },
	build = ":TSUpdate",
	event = { "BufRead", "BufNewFile" },
	-- dependencies = {
	-- 	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	-- 	{ "nvim-treesitter/playground" },
	-- },
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"html",
			"css",
			"lua",
			"luadoc",
			"markdown",
			"vim",
			"vimdoc",
			"go",
			"gomod",
			"gowork",
			"gosum",
			"angular",
			"typescript",
			"svelte",
			"rust",
		},

		-- Autoinstall languages that are not installed
		auto_install = true,
		highlight = {
			enable = true,
			-- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
			--  If you are experiencing weird indenting issues, add the language to
			--  the list of additional_vim_regex_highlighting and disabled languages for indent.
			-- additional_vim_regex_highlighting = { "ruby" },
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true, disable = { "ruby" } },
	},
	config = function(_, opts)
		-- [[ Configure Treesitter ]] See `:help nvim-treesitter`

		-- Prefer git instead of curl in order to improve connectivity in some environments
		require("nvim-treesitter.install").prefer_git = true
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)

		-- There are additional nvim-treesitter modules that you can use to interact
		-- with nvim-treesitter. You should go explore a few and see what interests you:
		--
		--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
		--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
		--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
	end,
}
