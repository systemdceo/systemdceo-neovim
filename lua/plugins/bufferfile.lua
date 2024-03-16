return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			buffer_close_icon = "",
			mode = "buffers",
			--separator_styles = "slope",
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					separator = true,
					padding = 1,
				},
			},
			diagnostics = "nvim_lsp",
			indicator = {
				icon = " ◯ ",
			},
		},
	},
}
