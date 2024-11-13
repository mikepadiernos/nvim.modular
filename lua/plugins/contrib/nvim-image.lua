return {
  "3rd/image.nvim",
  build = false,
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "markdown" },
          highlight = { enable = true },
        })
      end,
    },
  },
  config = function()
    require("image").setup()
  end,
}
