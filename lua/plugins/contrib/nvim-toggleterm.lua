return {
  "akinsho/toggleterm.nvim",
  lazy = false,
  version = "*",
  dependencies = {
    "bwpge/toggleterm-ext.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<c-\>]],
      autochdir = true,
      highlights = {
        Normal = {
          link = "Normal",
        },
        NormalFloat = {
          link = "Normal",
        },
        EndOfBuffer = {
          link = "Normal",
        },
        FloatBorder = {
          guifg = User_bg,
          guibg = User_bg,
        },
        SignColumn = {
          link = "Normal",
        },
      },
      shade_terminal = false,
      float_opts = {
        winblend = 3,
        background = "Normal",
      },
    }
  end,
}
