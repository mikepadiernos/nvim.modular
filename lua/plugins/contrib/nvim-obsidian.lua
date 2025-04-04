return {
  -- lazy = true,
  lazy = false,
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "family",
        path = "~/Library/Notebooks/family",
      },
      {
        name = "groceries",
        path = "~/Library/Notebooks/groceries",
      },
      {
        name = "notes",
        path = "~/Library/Notebooks/notes",
      },
      {
        name = "projects",
        path = "~/Library/Notebooks/projects",
      },
      {
        name = "records",
        path = "~/Library/Notebooks/records",
      },
    },

    -- see below for full list of options 👇
  },
}
