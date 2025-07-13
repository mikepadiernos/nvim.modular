return {
  lazy = false,
  "echasnovski/mini.misc",
  version = false,
  config = function()
    local MiniMisc = require("mini.misc")

    MiniMisc.setup_termbg_sync()

    MiniMisc.setup()
  end,
}
