return {
  "fbuchlak/cmp-symfony-router",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- config
    table.insert(require("cmp").get_config().sources, { name = "symfony_router" })
  end,
}
