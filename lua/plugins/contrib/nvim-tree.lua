return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  config = function(_)
    require("nvim-tree").setup {
      view = {
        width = 40,
      },
    }
  end,
}
