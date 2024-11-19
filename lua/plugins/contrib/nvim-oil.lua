return {
  "stevearc/oil.nvim",
  -- @module 'oil'
  -- @type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = {
    "mimikun/oil-image-preview.nvim",
    "nvim-tree/nvim-web-devicons",
  }, -- use if prefer nvim-web-devicons
  config = function()
    local oip = require "oil-image-preview"
    require("oil").setup {
      keymaps = {
        ["g<leader>"] = oip.openWithQuickLook,
        ["gp"] = oip.weztermPreview,
      },
    }
  end,
}
