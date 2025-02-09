return {
  "nvim-telekasten/telekasten.nvim",
  lazy = false,
  dependencies = {
    "renerocksai/telekasten.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("telekasten").setup {
      home = vim.fn.expand "~/Library/Notebooks/", -- Put the name of your notes directory here
    }
  end,
}
