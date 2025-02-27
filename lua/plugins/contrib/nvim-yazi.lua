return {
  "Kicamon/yazi.nvim",
  lazy = true,
  cmd = "Yazi",
  config = function()
    require("yazi").setup {}
  end,
}
