return {
  "daenikon/marknav.nvim",
  ft = { "markdown", "md" },
  config = function()
    require("marknav").setup()
  end,
}
