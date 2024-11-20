vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.o.cursorline = true
vim.o.number = true
vim.o.termguicolors = true

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "core.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "user.options"
require "user.mappings"

require "nvchad.options"
require "nvchad.autocmds"

vim.schedule(function()
  require "nvchad.mappings"
end)
