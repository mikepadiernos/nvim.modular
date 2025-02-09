return {
  "3rd/image.nvim",
  build = false,
  dependencies = {
    "vhyrro/luarocks.nvim",
    {
      "kiyoon/magick.nvim",
      config = function()
        -- require("magick").setup {}
      end,
    },
    {
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
