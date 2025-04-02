--lazy
return {
  "mikemcbride/telescope-mru.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- To get the plugin loaded and working with telescope,
    -- you need to call load_extension somewhere after setup function:
    require("telescope").load_extension("mru_files")
  end,
}
