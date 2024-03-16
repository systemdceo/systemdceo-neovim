vim.g.mapleader = " "

-- Nvim Tree
vim.keymap.set("n", "<leader>e", ":Neotree float focus<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Navigation
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>X", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>s", ":BufferLineSortByTabs<CR>")

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>")
vim.keymap.set("n", "<leader>gc", "Telescope git_commits<CR>")
vim.keymap.set("n", "<leader>gs", "Telescope git_status<CR>")
vim.keymap.set("n", "<leader>ls", "Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "gr", ":Telescope lsp_references<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "gd", ":Telescope lsp_definitions<CR>", { noremap = true, silent = true })

-- Gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
