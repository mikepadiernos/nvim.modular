return {
  lazy = false,
  "michaelpadiernos-forks/sidebar.nvim",
  dependencies = {
    "sidebar-nvim/sections-dap",
  },
  config = function()
    require("sidebar-nvim").setup {
      disable_default_keybindings = 0,
      bindings = nil,
      open = false,
      side = "right",
      initial_width = 45,
      hide_statusline = false,
      update_interval = 1000,
      sections = {
        "datetime",
        "todos",
        "diagnostics",
        "git",
        require "dap-sidebar-nvim.breakpoints",
      },
      section_separator = {
        -- "",
        "",
      },
      section_title_separator = { "" },
      containers = {
        attach_shell = "/bin/zsh",
        show_all = true,
        interval = 5000,
      },
      datetime = {
        icon = "󰃰",
        format = "%Y.%m.%d - %H:%M:%S",
        clocks = { { name = "local" } },
      },
      todos = {
        icon = "󰺿",
        ignored_paths = { "~" }, -- ignore certain paths, this will prevent huge folders like $HOME to hog Neovim with TODO searching
        initially_closed = false, -- whether the groups should be initially closed on start. You can manually open/close groups later.
      },
      diagnostics = {
        icon = "󰼀",
      },
      git = {
        -- icon = "",
        icon = "",
      },
      dap = {
        breakpoints = {
          icon = "",
        },
      },
    }
  end,
}
