return {
  "chrisgrieser/cmp_yanky",
  config = function() end,
  init = function()
    table.insert(require("cmp").get_config().sources, { name = "cmp_yanky" })
  end,
}
