return {
  "Bekaboo/dropbar.nvim",
  config = function()
    require("lazy").setup {
      {
        "Bekaboo/dropbar.nvim",
        -- optional, but required for fuzzy finder support
        dependencies = {
          "nvim-telescope/telescope-fzf-native.nvim",
        },
      },
    }
  end,
}
