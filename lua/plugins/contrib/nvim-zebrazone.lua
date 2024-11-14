return {
  "notomo/zebrazone.nvim",
  config = function()
    require("zebrazone").start()
    require("zebrazone").stop()
  end,
}
