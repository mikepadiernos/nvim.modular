return {
  "koyashiro/cmp-uuid",
  init = function()
    table.insert(require("cmp").get_config().sources, { name = "uuid" })
  end,
}
