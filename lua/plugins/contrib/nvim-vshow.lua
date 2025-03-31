return {
  lazy = false,
  "oxtna/vshow.nvim",
  config = function()
    require("vshow").setup({
      all = {
        { character = "eol", symbol = "" },
        { character = "tab", symbol = "> " },
        { character = "space", symbol = "" },
        { character = "multispace", symbol = "" },
        { character = "lead", symbol = "" },
        { character = "trail", symbol = "-" },
        { character = "extends", symbol = "" },
        { character = "precedes", symbol = "" },
        { character = "precedes", symbol = "" },
        { character = "conceal", symbol = "" },
        { character = "nbsp", symbol = "+" },
      },
      char = {},
      line = {},
      block = {},
    })
  end,
}
