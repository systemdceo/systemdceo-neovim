-- Theme
vim.cmd.colorscheme("catppuccin-macchiato")
vim.opt.termguicolors = true

-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

--
vim.opt.colorcolumn = "79"
vim.wo.linebreak = true
vim.opt.wrap = false
vim.opt.shell = "/bin/bash"
vim.opt.scrolloff = 10
vim.opt.undofile = true
vim.opt.undolevels = 1000

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true
vim.opt.cursorline = true

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Clipboard
vim.opt.clipboard = "unnamed,unnamedplus"
vim.api.nvim_set_option("clipboard", "unnamed,unnamedplus")

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Swapfiles
vim.opt.swapfile = false

-- Disable some default providers
vim.g["loaded_node_provider"] = 0
vim.g["loaded_python3_provider"] = 0
vim.g["loaded_perl_provider"] = 0
vim.g["loaded_ruby_provider"] = 0

-- Add binaries installed by mason.nvim to path
local is_windows = vim.fn.has("win32") ~= 0
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin" .. (is_windows and ";" or ":") .. vim.env.PATH
