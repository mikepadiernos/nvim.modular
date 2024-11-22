return {
  "petertriho/cmp-git",
  dependencies = { "hrsh7th/nvim-cmp" },
  opts = {
    -- options go here
  },
  config = function(_)
    require("cmp_git").setup {}
  end,
  init = function()
    table.insert(require("cmp").get_config().sources, { name = "git" })
  end,
}
