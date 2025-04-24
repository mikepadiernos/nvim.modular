return {
  lazy = false,
  "OXY2DEV/markview.nvim",

  -- For blink.cmp's completion
  -- source
  dependencies = {
    "saghen/blink.cmp",
  },
  config = function()
    local presets = require("markview.presets")

    require("markview").setup({
      markdown = {
        headings = presets.headings.slanted,
      },
    })
  end,
}
