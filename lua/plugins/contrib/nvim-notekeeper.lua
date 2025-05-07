return {
  lazy = false,
  "ricarim/notekeeper.nvim",
  config = function()
    require("notekeeper").setup()
  end,
}
