Keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

require("user.mappings.core")
require("user.mappings.lazyapps")
require("user.mappings.telekasten")
require("user.mappings.telescope")
require("user.mappings.tmux")

-- Aerial
Keymap("n", "<leader>a", "<cmd>AerialToggle!<CR>", opts)

-- Grug FAR
Keymap({ "n" }, "<A-S-g>", ":GrugFar<CR>", opts)

-- Neowords
-- Keymap({ "n", "x", "o" }, "w", Hops.forward_start)
-- Keymap({ "n", "x", "o" }, "e", Hops.forward_end)
-- Keymap({ "n", "x", "o" }, "b", Hops.backward_start)
-- Keymap({ "n", "x", "o" }, "ge", Hops.backward_end)

-- Notes
-- Keymap("n", "<leader>nn", "<cmd>NewNote<CR>", { desc = "[N]ew [N]ote" })
-- Keymap("n", "<leader>nh", "<cmd>SearchNotes<CR>", { desc = "[N]otes Searc[h]" })
-- Keymap("n", "<leader>ne", "<cmd>ViewNotes<CR>", { desc = "[N]otes [E]xplorer" })
-- Keymap("n", "<leader>nx", "<cmd>CloseNotes<CR>", { desc = "[N]otes E[x]it" })

-- Oil
Keymap(
  "n",
  "<leader>oo",
  ":Oil --float<CR>",
  { desc = "[O]il: [O]pen Parent Directory", noremap = true, silent = true }
)

-- Outline
Keymap("n", "<leader>ot", "<cmd>Outline<CR>", { desc = "T[o]ggle Ou[t]line", noremap = true, silent = true })

-- Scratch
Keymap("n", "<C-S-s>", "<cmd>Scratch<CR>", { desc = "[S]cracth: New", noremap = true, silent = true })
Keymap("n", "<C-S-o>", "<cmd>ScratchOpen<CR>", { desc = "Scratch: [O]pen", noremap = true, silent = true })

-- Sidebar
Keymap(
  { "n", "v", "i" },
  "<leader>;",
  "<cmd>SidebarNvimToggle<CR>",
  { desc = "Sidebar: Open", noremap = true, silent = true }
)

-- Switch-project
Keymap("n", "<leader>ps", "<cmd>SwitchProjects<CR>", { desc = "[P]roject [S]witch", noremap = true, silent = true })

-- ToggleTerm
-- Keymap(
--   { "n", "v", "i" },
--   "<leader>zh",
--   ":ToggleTerm direction=horizontal<CR>",
--   { desc = "Toggle Terminal: Horizontal" }
-- )
-- Keymap(
--   { "n", "v", "i" },
--   "<leader>zv",
--   ":ToggleTerm direction=vertical size=80<CR>",
--   { desc = "Toggle Terminal: Vertical" }
-- )
Keymap(
  { "n", "v", "i" },
  "<leader>tf",
  ":ToggleTerm direction=float<CR>",
  { desc = "[T]oggle Terminal: [F]loat", noremap = true, silent = true }
)

-- Treesj
Keymap(
  { "n", "v" },
  "<leader>te",
  require("treesj").toggle,
  { desc = "[T]reesj: Toggl[E]", noremap = true, silent = true }
)
Keymap({ "n", "v" }, "<leader>ts", function()
  require("treesj").toggle({ split = { recursive = true } })
end, { desc = "[T]reesj: [S]plit", noremap = true, silent = true })

-- Twilight
Keymap("n", "<leader>`", ":Twilight<CR>", opts)

-- Visual Whitespace
Keymap(
  "n",
  "<leader>vw",
  "<cmd>lua require('visual-whitespace').toggle()<CR>",
  { desc = "Toggle [V]isual [W]hitespace", noremap = true, silent = true }
)

-- VS Tasks
Keymap(
  "n",
  "<Leader>tt",
  "<cmd>lua require('telescope').extensions.vstask.tasks()<CR>",
  { desc = "[T]oggle [T]asks", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>ti",
  "<cmd>lua require('telescope').extensions.vstask.inputs()<CR>",
  { desc = "[T]asks: [I]nput Variables", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>tv",
  "<cmd>lua require('telescope').extensions.vstask.clear_inputs()<CR>",
  { desc = "[T]asks: Clear Input [V]ariables", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>T",
  "<cmd>lua require('telescope').extensions.vstask.history()<CR>",
  { desc = "[[T]]asks: History", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>tl",
  "<cmd>lua require('telescope').extensions.vstask.launch()<CR>",
  { desc = "[T]asks: [L]aunch Configuration", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>tr",
  "<cmd>lua require('telescope').extensions.vstask.jobs()<CR>",
  { desc = "[T]asks: [R]unning Tasks", noremap = true, silent = true }
)
Keymap(
  "n",
  "<Leader>tc",
  "<cmd>lua require('telescope').extensions.vstask.jobhistory()<CR>",
  { desc = "[T]asks: [C]ompleted Tasks", noremap = true, silent = true }
)

-- Wrapping
Keymap({ "n" }, "<leader>w", ":ToggleWrapMode<CR>", { desc = "[W]rap Mode Toggle", noremap = true, silent = true })

-- Yazi
Keymap({ "n", "v" }, "<leader>fs", "<cmd>Yazi<CR>", { desc = "[Y]a[z]i: Open", noremap = true, silent = true })
Keymap({ "n", "v" }, "<leader>yz", "<cmd>Yazi<CR>", { desc = "[Y]a[z]i: Open", noremap = true, silent = true })
Keymap(
  { "n", "v" },
  "<leader>yw",
  "<cmd>Yazi cwd<CR>",
  { desc = "[Y]azi: [W]orking Directory", noremap = true, silent = true }
)
Keymap({ "n", "v" }, "<leader>yr", "<cmd>Yazi toggle<CR>", { desc = "[Y]azi: [R]esume", noremap = true, silent = true })

-- Yeet
Keymap("n", "<leader>yy", function()
  require("yeet").execute("source venv/bin/activate", { clear_before_yeet = false })
end, { desc = "[[Y]]eet: Toggle", noremap = true, silent = true })
