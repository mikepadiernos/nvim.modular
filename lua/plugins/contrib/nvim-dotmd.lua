-- dotmd.lua
return {
  "y3owk1n/dotmd.nvim",
  cmd = {
    "DotMdCreateNote",
    "DotMdCreateTodoToday",
    "DotMdCreateJournal",
    "DotMdInbox",
    "DotMdNavigate",
    "DotMdPick",
    "DotMdOpen",
  },
  event = "VeryLazy",
  ---@type DotMd.Config
  opts = {
    root_dir = "~/Library/Notebooks/", -- set it to your desired directory or remain at it is
    default_split = "float", -- or "vertical" or "horizontal" or "none" based on your preference
    rollover_todo = {
      enabled = true, -- enable rollover
    },
    picker = "snacks", -- or "fzf" or "telescope" or "mini" based on your preference
  },
  keys = {
    {
      "<leader>nn",
      function()
        require("dotmd").create_note()
      end,
      desc = "[DotMd] [N]ew [N]ote",
    },
    {
      "<leader>nt",
      function()
        require("dotmd").create_todo_today()
      end,
      desc = "[DotMd] [N]ew [T]odo For Today",
    },
    {
      "<leader>ni",
      function()
        require("dotmd").inbox()
      end,
      desc = "[DotMd] [N]ote [I]nbox",
    },
    {
      "<leader>nj",
      function()
        require("dotmd").create_journal()
      end,
      desc = "[DotMd] [N]ew [J]ournal",
    },
    {
      "<leader>n[",
      function()
        require("dotmd").navigate("previous")
      end,
      desc = "[DotMd] [N]avigate To Previous Todo",
    },
    {
      "<leader>n]",
      function()
        require("dotmd").navigate("next")
      end,
      desc = "[DotMd] [N]avigate to next todo",
    },
    {
      "<leader>no",
      function()
        require("dotmd").open({
          pluralise_query = true, -- recommended
        })
      end,
      desc = "[DotMd] [N]ote [O]pen",
    },
    {
      "<leader>sna",
      function()
        require("dotmd").pick()
      end,
      desc = "[DotMd] Everything",
    },
    {
      "<leader>snA",
      function()
        require("dotmd").pick({ grep = true })
      end,
      desc = "[DotMd] Search everything grep",
    },
    {
      "<leader>snn",
      function()
        require("dotmd").pick({ type = "notes" })
      end,
      desc = "[DotMd] Search notes",
    },
    {
      "<leader>snN",
      function()
        require("dotmd").pick({
          type = "notes",
          grep = true,
        })
      end,
      desc = "[DotMd] Search notes grep",
    },
    {
      "<leader>snt",
      function()
        require("dotmd").pick({ type = "todos" })
      end,
      desc = "[DotMd] Search todos",
    },
    {
      "<leader>snT",
      function()
        require("dotmd").pick({
          type = "todos",
          grep = true,
        })
      end,
      desc = "[DotMd] Search todos grep",
    },
    {
      "<leader>snj",
      function()
        require("dotmd").pick({ type = "journals" })
      end,
      desc = "[DotMd] Search journal",
    },
    {
      "<leader>snJ",
      function()
        require("dotmd").pick({
          type = "journals",
          grep = true,
        })
      end,
      desc = "[DotMd] Search journal grep",
    },
  },
}
