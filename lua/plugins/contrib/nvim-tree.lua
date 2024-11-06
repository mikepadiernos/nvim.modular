return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    { "b0o/nvim-tree-preview.lua", config = function() end },
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  config = function(_)
    require("nvim-tree").setup {
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      view = {
        width = 45,
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    }
  end,
}
