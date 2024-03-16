return {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "nvim-telescope/telescope.nvim",
        "mfussenegger/nvim-dap-python"
    },
    event = "VeryLazy",
    keys = {
        { "<leader>vs", "<cmd>VenvSelect<cr>" },
        { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
    },
    config = function()
        require("venv-selector").setup({
            name = {
                "venv",
		        ".venv",
		        "env",
		        ".env",
		        "pyenv",
            },
            dap_enabled = false,
        })
    end,
}
