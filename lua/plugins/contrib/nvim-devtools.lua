return {
  "muhfaris/devtools.nvim",
  opts = function()
    local actions = require "devtools.actions"
    return {
      mappings = {
        v = {
          ["<Leader>jp"] = {
            func = actions.call "json.parse",
            desc = "Parse json string from selection visual text",
          },
        },
        n = {
          ["<Leader>mip"] = {
            func = actions.call "net.my_ip",
            desc = "Get my public IP address",
          },
        },
      },
    }
  end,
}
