return {
  lazy = false,
  "crnvl96/lazydocker.nvim",
  -- event = "VeryLazy",
  -- opts = {
  --   popup_window = {
  --     enter = true,
  --     focusable = true,
  --     zindex = 40,
  --     position = "90%",
  --     relative = "editor",
  --     size = {
  --       width = "90%",
  --       height = "90%",
  --     },
  --     buf_options = {
  --       modifiable = true,
  --       readonly = false,
  --     },
  --     -- win_options = {
  --     --   winhighlight = "Normal:Normal,Normal:Normal",
  --     --   winblend = 0,
  --     -- },
  --     border = {
  --       highlight = "Normal",
  --       style = "solid",
  --       text = {
  --         -- top = " Lazydocker ",
  --         top = "",
  --       },
  --     },
  --   },
  -- }, -- automatically calls `require("lazydocker").setup()`
  config = function()
    -- Default configuration
    require("lazydocker").setup({
      window = {
        settings = {
          width = 0.95, -- Percentage of screen width (0 to 1)
          height = 0.95, -- Percentage of screen height (0 to 1)
          border = "none", -- See ':h nvim_open_win' border options
          relative = "win", -- See ':h nvim_open_win' relative options
        },
      },
    })
  end,
}
