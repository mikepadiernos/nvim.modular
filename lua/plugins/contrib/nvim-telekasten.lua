return {

  "renerocksai/telekasten.nvim",
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tarting/tktodo.nvim",
  },
  config = function()
    -- require("telescope").load_extension("tktodo")
    require("telekasten").setup({
      home = vim.fn.expand("~/Library/Notebooks/"), -- Put the name of your notes directory here
      dailies = vim.fn.expand("~/Library/Notebooks/notes/dailies/"),
      weeklies = vim.fn.expand("~/Library/Notebooks/notes/weeklies/"),
      templates = vim.fn.expand("~/Library/Notebooks/templates/"),
      vaults = {
        personal = {
          -- configuration for personal vault. E.g.:
          home = "~/Library/Notebooks/notes/",
        },
        family = {
          -- configuration for personal vault. E.g.:
          home = "~/Library/Notebooks/family/",
        },
        projects = {
          -- configuration for personal vault. E.g.:
          home = "~/Library/Notebooks/projects/",
        },
        records = {
          -- configuration for personal vault. E.g.:
          home = "~/Library/Notebooks/records/",
        },
      },
    })
  end,
}
