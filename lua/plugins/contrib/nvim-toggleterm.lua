return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      open_mapping = [[<c-\>]],
      autochdir = true,
      highlights = {
        Normal = {
          guibg = User_bg,
        },
        NormalFloat = {
          link = "Normal",
        },
        FloatBorder = {
          guifg = "#000000",
          guibg = "#000000",
        },
        EndOfBuffer = {
          guibg = "#000000",
        },
      },
      shade_terminal = false,
    }
  end,
}
