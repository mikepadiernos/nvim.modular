return {
  "pontusk/cmp-sass-variables",
  config = function() end,
  init = function()
    table.insert(require("cmp").get_config().sources, { name = "sass-variables" })
  end,
}
