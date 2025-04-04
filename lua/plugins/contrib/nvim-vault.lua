return {
  "oleksiiluchnikov/vault.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "oleksiiluchnikov/gradient.nvim",
    "oleksiiluchnikov/dates.nvim",
  },
  config = function()
    require("vault").setup()
  end,
}
