return {
  "davidmh/cmp-nerdfonts",
  config = function() end,
  init = function()
    table.insert(require("cmp").get_config().sources, { name = "nerdfonts" })
  end,
}
