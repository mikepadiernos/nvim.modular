return {
  lazy = true,
  "serenevoid/kiwi.nvim",
  opts = {
    {
      name = "work",
      path = "work-wiki",
    },
    {
      name = "personal",
      path = "personal-wiki",
    },
  },
  keys = {
    { "<leader>kw", ':lua require("kiwi").open_wiki_index()<cr>', desc = "[K]iwi: Open [W]iki Index" },
    { "<leader>kp", ':lua require("kiwi").open_wiki_index("personal")<cr>', desc = "[K]iwi: Open [P]ersonal Wiki" },
    { "T", ':lua require("kiwi").todo.toggle()<cr>', desc = "Kiwi: [T]oggle Markdown Task" },
  },
}
