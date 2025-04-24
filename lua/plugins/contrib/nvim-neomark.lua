return {
  "mrbya/neomark",
  dependencies = {
    "L3MON4D3/LuaSnip",
    "nvim-telescope/telescope.nvim",
    -- Treesitter with markdown parser
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        highlight = {
          enable = true,
        },
        ensure_installed = {
          "markdown",
        },
      },
    },
  },
  event = "VeryLazy",
  opts = {},
}
