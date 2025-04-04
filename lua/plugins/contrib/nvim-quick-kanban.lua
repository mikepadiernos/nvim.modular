return {
  lazy = false,
  "jkallio/quick-kanban.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("quick-kanban").setup({
      -- Full path to directory where the kanban board data will be stored.
      -- Leave nil to create the directory in the current working directory.
      path = nil,

      -- Log level for the plugin. Set to nil to disable logging.
      -- Possible values: "debug" | "info" | "warn" | "error" | nil
      log_level = "warn",

      -- Subdirectories for different files in the kanban board.
      subdirectories = {
        items = ".items", -- Directory for the items metadata
        archive = ".archive", -- Directory for the archived items
        attachments = ".attachments", -- Directory for the attachments
      },

      -- A list of categories for the default kanban board.
      default_categories = {
        "Backlog",
        "In Progress",
        "Done",
      },

      -- The key mappings for the kanban UI.
      mappings = {
        show_help = "?",
        next_category = "l",
        prev_category = "h",
        next_item = "j",
        prev_item = "k",
        add_item = "a",
        rename_item = "r",
        edit_item = "e",
        end_editing = "<esc><esc>",
        archive_item = "d",
        unarchive_item = "u",
        delete = "x",
        open_item = "<leader>o",
        add_category = "A",
        rename_category = "R",
        delete_category = "X",
        select_item = "<cr>",
        toggle_archive = "<leader>a",
        toggle_preview = "<leader>p",
        quit = { "q", "<esc>" }, -- You can assign multiple keys
      },

      -- List of disabled key mappings (to ensure the usability)
      disabled_keys = {
        "a",
        "c",
        "d",
        "i",
        "m",
        "o",
        "p",
        "r",
        "x",
        "gg",
        "G",
        "<esc>",
        "<tab>",
        "<cr>",
        "<bs>",
        "<del>",
      },

      -- The window configuration for the kanban board
      window = {
        width = 40, -- Width of each kanban category window
        height = 30, -- Height of the kanban UI
        title_decoration = { " ", " " }, -- Title decoration (prefix and suffix)
        blend = 5, -- The transparency of the kanban board window. (0-100)
        vertical_gap = 1, -- Gap between the windows (vertical)
        horizontal_gap = 2, -- Gap between the windows (horizontal)
        accent_color = "#44AA44", -- Accent color for the kanban board window.
        hilight_color = "#FFFF44", -- Highlight color for the kanban board window.
        active_text_bg = "#448844", -- Background color of the active item
        active_text_fg = "#000000", -- Text color of the active item
        selected_text_bg = "#888844", -- Background color of the selected item.
        selected_text_fg = "#000000", -- Text color of the selected item.
      },

      hide_cursor = true, -- Hide the cursor when the kanban is opened.
      number = true, -- Show line numbers in Edit mode
      wrap = true, -- Wrap lines in Kanban category windows
      show_preview = true, -- Show the preview window
      show_archive = false, -- Show the archive window
    })
  end,
}
