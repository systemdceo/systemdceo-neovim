return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"bash",
				"html",
				"css",
				"scss",
				"python",
				"c",
				"cpp",
				"csv",
				"dockerfile",
				"gitignore",
				"ini",
				"javascript",
				"json",
				"lua",
				"php",
				"sql",
				"xml",
				"yaml",
				"markdown",
				"po",
			},
			sync_install = false,
			auto_install = true,
			indent = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlight = false,
			},
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},
		})
	end,
}
