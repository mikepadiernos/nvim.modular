return {
  lazy = false,
  "stevearc/oil.nvim",
  -- @module 'oil'
  -- @type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = {
    "mimikun/oil-image-preview.nvim",
    "fmpisantos/oilAutoCmd.nvim",
    "JezerM/oil-lsp-diagnostics.nvim",
    "nvim-tree/nvim-web-devicons",
    {
      "p10/fuzzy-oil.nvim",
      dependencies = { "stevearc/oil.nvim", "nvim-telescope/telescope.nvim" },
      cmd = "FuzzyOil",
      opts = {},
    },
  }, -- use if prefer nvim-web-devicons
  config = function()
    local oip = require "oil-image-preview"
    require("oil").setup {
      keymaps = {
        ["<leader>lo"] = oip.openWithQuickLook,
        -- ["gp"] = oip.weztermPreview,
      },
    }
  end,
}
