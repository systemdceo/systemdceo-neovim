return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"ltex",
				--"clangd",
				"pyright",
				"cssls",
				--"lua_ls",
				--"rust_analyzer",
				"dockerls",
				"html",
				"jsonls",
				"tsserver",
				"yamlls",
				"bashls",
				--"typos_ls",
				--"lemminx",
				"taplo",
				--"sqlls",
				"marksman",
			},
			automatic_installation = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"bash-language-server",
				"grammarly-languageserver",
				"prettier",
				--"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
				"debugpy",
				"markdownlint",
			},
		})
	end,
}
