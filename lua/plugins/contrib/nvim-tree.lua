return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "b0o/nvim-tree-preview.lua",
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  config = function(_)
    require("nvim-tree").setup {
      view = {
        width = 40,
      },
    }
  end,
}
