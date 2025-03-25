return {
  "matteotagliatti/notes.nvim",
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("notes").setup {
      keymaps = {
        follow_link = "<leader>tw", -- default keybinding for following wiki links
        show_tags = "<leader>tg", -- default keybinding for showing tags
        journal = "<leader>tj", -- default keybinding for opening journal
        daily_note = "<leader>td", -- default keybinding for opening daily note
        formatting = {
          bold = "<leader>b", -- default keybinding for bold in visual mode
          italic = "<leader>i", -- default keybinding for italic in visual mode
          underline = "<leader>u", -- default keybinding for underline in visual mode
        },
      },
      highlights = {
        wikilink = {
          fg = nil, -- nil means use the default colorscheme
          underline = true,
        },
      },
      journal = {
        file = "journal.md", -- default journal file name
        daily_notes_dir = "daily", -- default directory for daily notes
      },
      utils = {
        date_format = "%Y-%m-%d", -- default date format
        time_format = "%H:%M:%S", -- default time format
      },
    }
  end,
}
