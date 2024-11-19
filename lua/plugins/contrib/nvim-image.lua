return {
  "3rd/image.nvim",
  build = false,
  dependencies = {
    {
      "kiyoon/magick.nvim",
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup {
          highlight = { enable = true },
        }
      end,
    },
  },
  config = function()
    require("image").setup()
  end,
}
