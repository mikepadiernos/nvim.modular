return {
  "natecraddock/workspaces.nvim",
  config = function()
    require("telescope").load_extension "workspaces"
    require("workspaces").setup {
      hooks = {
        open = { "NvimTreeOpen", "Telescope find_files" },
      },
      open_pre = {
        -- If recording, save current session state and stop recording
        "SessionsStop",

        -- delete all buffers (does not save changes)
        "silent %bdelete!",
      },
      open = function()
        require("sessions").load(nil, { silent = true })
      end,
    }
  end,
}
