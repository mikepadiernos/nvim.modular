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
      sort = {
        sorter = "case_sensitive",
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      renderer = {
        group_empty = false,
      },
      filters = {
        dotfiles = false,
      },
    }
  end,
}
