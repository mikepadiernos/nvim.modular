return {
  "Wansmer/treesj",
  -- keys = {
  --   "<leader>tm",
  --   "<leader>tj",
  --   "<space>s",
  -- },
  dependencies = { "nvim-treesitter/nvim-treesitter" }, -- if you install parsers with `nvim-treesitter`
  config = function()
    require("treesj").setup {}
  end,
}
