return {
  {
    name = "dap",
    "mfussenegger/nvim-dap",
    require "plugins.dap.nvim-dap",
  },
  {
    name = "dap-breakpoints",
    "Carcuis/dap-breakpoints.nvim",
    require "plugins.dap.nvim-dap-breakpoints",
  },
  -- {
  --   name = "dap-commands",
  --   "theHamsta/nvim-dap-commands",
  --   require "plugins.dap.nvim-dap-commands",
  -- },
  {
    name = "dap-project",
    "pathmann/nvim-dap-project-configuration",
    require "plugins.dap.nvim-dap-project",
  },
  {
    name = "dap-ui",
    "rcarriga/nvim-dap-ui",
    require "plugins.dap.nvim-dap-ui",
  },
}
