return {
  "thomas-hiron/cmp-twig",
  config = function()
    table.insert(require("cmp").get_config().sources, { name = "twig" })
  end,
}
