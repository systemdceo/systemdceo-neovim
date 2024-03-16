return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-fzf-native.nvim",
		enabled = vim.fn.executable("make") == 1,
		config = function()
			Util.on_load("telescope.nvim", function()
				require("telescope").load_extension("fzf")
			end)
		end,
	},
}
