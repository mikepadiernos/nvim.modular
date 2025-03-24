return {
  "theHamsta/nvim-dap-commands",
  config = function()
    require("nvim-dap-commands").setup {
      post_launch_commands = function()
        local dap = require "dap"
        dap.repl.open()
      end,
      debuggers = {
        your_debugger = {
          cmd = "YourVimCommand",
          -- adapter = {
          --   --- nvim-dap adapter config here
          -- },
          config = function(args)
            -- Generate here nvim-dap config based on user provided `args`
            return { --[[...]]
            }
          end,
        },
        --- Opinionated Entries for gdb, lldb, debugpy are provided, but can also be overwritten
        debugpy = {
          cmd = "StartDebugPy",
          -- adapter = {
          --   --[[...]]
          -- }
          config = function(args)
            return {
              type = "python",
              name = args[1],
              console = "integratedTerminal",
              justMyCode = true,
              request = "launch",
              program = table.remove(args, 1),
              args = args,
              --pythonPath = function()
              --return "/usr/bin/python3"
              --end
            }
          end,
        },
      },
    }
  end,
}
