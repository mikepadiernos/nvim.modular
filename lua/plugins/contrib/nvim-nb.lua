return {
  "shoebox/nb.nvim",
  cmd = {
    "NbAddNote",
    "NbEditNote",
    "NbSelectNotebook",
    "NbToday",
    "NbYesterday",
    "NbTomorrow",
  },
  config = function()
    require("nb-nvim").setup({
      notebook = "~/Library/Notebooks/", -- Replace with your default notebook name
    })
  end,
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim", -- Optional for Telescope UI
  },
}
