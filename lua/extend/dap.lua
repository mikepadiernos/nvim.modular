return {
  {
    name = "dap",
    "mfussenegger/nvim-dap",
    require("plugins.dap.nvim-dap"),
  },
  {
    name = "dap-breakpoints",
    "Carcuis/dap-breakpoints.nvim",
    require("plugins.dap.nvim-dap-breakpoints"),
  },
  -- {
  --   name = "dap-commands",
  --   "theHamsta/nvim-dap-commands",
  --   require "plugins.dap.nvim-dap-commands",
  -- },
  {
    name = "dap-excepiton-breakpoints",
    "lucaSartore/nvim-dap-exception-breakpoints",
    require("plugins.dap.nvim-dap-exception-breakpoints"),
  },
  {
    name = "dap-project",
    "pathmann/nvim-dap-project-configuration",
    require("plugins.dap.nvim-dap-project"),
  },
  {
    name = "dap-ui",
    "rcarriga/nvim-dap-ui",
    require("plugins.dap.nvim-dap-ui"),
  },
  {
    name = "dap-view",
    "igorlfs/nvim-dap-view",
    require("plugins.dap.nvim-dap-view"),
  },
}
