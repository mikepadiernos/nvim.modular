vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46/"
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.have_nerd_font = true
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true

-- bootstrap lazy and all plugins
require("core.lazy.bootstrap")

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

-- load user files
require("user.options")
require("user.mappings")

-- load nvchad files
require("nvchad.options")
require("nvchad.autocmds")

vim.schedule(function()
  require("nvchad.mappings")
end)
