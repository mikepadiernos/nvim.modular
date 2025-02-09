---@module "lazy"
---@type LazySpec
return {
  "mikavilpas/tsugit.nvim",
  keys = {
    {
      -- "<right>",
      "<leader>gl",
      function()
        require("tsugit").toggle()
      end,
      { silent = true, desc = "toggle lazygit" },
    },
    {
      -- "<leader>gl",
      "<leader>gc",
      function()
        local absolutePath = vim.api.nvim_buf_get_name(0)
        require("tsugit").toggle_for_file(absolutePath)
      end,
      { silent = true, desc = "lazygit file commits" },
    },
  },
  -- NOTE: opts is required in lazy.nvim so that setup() is called
  ---@type tsugit.UserConfig
  opts = {
    -- The key mappings that are active when lazygit is open. They are
    -- completely unusable by lazygit, so set the to rare keys.
    keys = {
      -- toggle = "<right>",
      toggle = "<A-l>",
      force_quit = "<c-c>",
    },
  },
}
