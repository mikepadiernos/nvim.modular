return {
  "thomas-hiron/cmp-twig-constants",
  config = function()
    table.insert(require("cmp").get_config().sources, { name = "twig_constants" })
  end,
}
