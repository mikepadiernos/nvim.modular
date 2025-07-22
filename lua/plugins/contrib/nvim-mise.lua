return {
  lazy = false,
  "ejrichards/mise.nvim",
  opts = {
    -- Executable to run
    run = "mise",
    -- Args for the executable, set to "env --json --quiet" to ignore mise warnings
    args = "env --json",
    -- Set to override the base PATH
    initial_path = vim.env.PATH,
    -- Removes env vars set by mise when navigating away from a directory
    unset_vars = true,
    -- Loads env vars when setup() is called, don't need this if mise is hooked into your shell
    load_on_setup = true,
    -- Force a run when using an unsupported executable
    force_run = false,
  },
}
