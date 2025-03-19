Keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

Keymap("n", "<leader>1", "<esc>:Lazy<CR>", opts)
Keymap("n", "<leader>2", "<esc>:Mason<CR>", opts)

Keymap({ "n", "v", "i", "x" }, "<C-S-Right>", ":bnext<CR>", opts)
Keymap({ "n", "v", "i", "x" }, "<C-S-Left>", ":bprev<CR>", opts)

Keymap({ "n", "i" }, "<C-s>", "<esc>:w!<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-q>", "<esc>:q<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-q>", "<esc>:q!<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-S-q>", "<esc>:qa!<CR>", opts)

-- Yank into system clipboard
Keymap({ "n", "v" }, "<leader>c", '"+y') -- yank motion
Keymap({ "n", "v" }, "<leader>C", '"+Y') -- yank line
Keymap({ "n", "x" }, "<C-c>", [["+y]]) -- copy to system clipboard

-- Paste from system clipboard
Keymap("n", "<leader>v", '"+p') -- paste after cursor
Keymap("n", "<leader>V", '"+P') -- paste before cursor
Keymap({ "n", "x" }, "<C-v>", [["+p]]) -- paste from system clipboard

-- Delete into system clipboard
Keymap({ "n", "v" }, "<C-d>", '"+d') -- delete motion
Keymap({ "n", "v" }, "<C-D>", '"+D') -- delete line

-- Drawer

-- Grug FAR
Keymap({ "n" }, "<A-S-g>", ":GrugFar<CR>", opts)

-- Nvim Tree
Keymap({ "n", "v", "i" }, "<leader>\\", ":NvimTreeFocus<CR>", opts)
Keymap({ "n", "v", "i" }, "<leader><S-\\>", ":NvimTreeToggle<CR>", opts)

-- Oil
-- Keymap("n", "<leader>ol", ":Oil<CR>", { desc = "Open parent directory" })

-- Simply File Manager
-- :Keymap({ "n", "v", "i" }, "<leader>fs", ":SimplyFileOpen<CR>", opts)

-- Scratch
Keymap("n", "<C-S-s>", "<cmd>Scratch<cr>")
Keymap("n", "<C-S-o>", "<cmd>ScratchOpen<cr>")

-- Telescope
Keymap("n", "<leader>fj", ":Telescope jumplist<CR>", opts)
Keymap("n", "<leader>fl", ":Telescope oil<CR>", opts)
Keymap("n", "<leader>fn", ":Nerdy<CR>", opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
Keymap("n", "<leader>fr", ":Telescope frecency<CR>", opts)
Keymap("n", "<leader>ft", ":Telescope highlights<CR>", opts)
Keymap("n", "<leader>fv", ":Telescope remote-sshfs<CR>", opts)
Keymap("n", "<leader>fy", "<cmd>lua require('yanklist').yanklist()<CR>", { desc = "Show Yanklist" })
Keymap({ "n", "v" }, "<leader>yz", "<cmd>Yazi<CR>", { desc = "Open Yazi" })
Keymap({ "n", "v" }, "<leader>yw", "<cmd>Yazi cwd<CR>", { desc = "Open Yazi in working directory" })
Keymap({ "n", "v" }, "<leader>yn", "<cmd>Yazi toggle<CR>", { desc = "Resume Yazi" })

-- Tmux-switch
Keymap("n", "<C-f>", "<CMD>TmuxSwitch<CR>")
Keymap("n", "<leader>cs", "<CMD>TmuxCreateSession<CR>")
Keymap("n", "<leader>rs", "<CMD>TmuxRenameSession<CR>")

-- ToggleTerm
Keymap(
  { "n", "v", "i" },
  "<leader>zh",
  ":ToggleTerm direction=horizontal<CR>",
  { desc = "Toggle Terminal: Horizontal" }
)
Keymap(
  { "n", "v", "i" },
  "<leader>zv",
  ":ToggleTerm direction=vertical size=80<CR>",
  { desc = "Toggle Terminal: Vertical" }
)
Keymap({ "n", "v", "i" }, "<leader>zi", ":ToggleTerm direction=float<CR>", { desc = "Toggle Terminal: Float" })

-- Twilight
Keymap("n", "<leader>`", ":Twilight<CR>", opts)

-- Visual Whitespace
Keymap("n", "<leader>vw", "<cmd>lua require('visual-whitespace').toggle()<CR>", { desc = "Toggle visual whitespace" })

-- VS Tasks
Keymap("n", "<Leader>tt", "<cmd>lua require('telescope').extensions.vstask.tasks()<CR>", { desc = "Tasks" })
Keymap(
  "n",
  "<Leader>ti",
  "<cmd>lua require('telescope').extensions.vstask.inputs()<CR>",
  { desc = "Tasks: Input Variables" }
)
Keymap(
  "n",
  "<Leader>tv",
  "<cmd>lua require('telescope').extensions.vstask.clear_inputs()<CR>",
  { desc = "Tasks: Clear Input Variables" }
)
Keymap("n", "<Leader>T", "<cmd>lua require('telescope').extensions.vstask.history()<CR>", { desc = "Tasks: History" })
Keymap(
  "n",
  "<Leader>tl",
  "<cmd>lua require('telescope').extensions.vstask.launch()<CR>",
  { desc = "Tasks: Launch Configuration" }
)
Keymap(
  "n",
  "<Leader>tr",
  "<cmd>lua require('telescope').extensions.vstask.jobs()<CR>",
  { desc = "Tasks: Running Tasks" }
)
Keymap(
  "n",
  "<Leader>tc",
  "<cmd>lua require('telescope').extensions.vstask.jobhistory()<CR>",
  { desc = "Tasks: Completed Tasks" }
)

-- Yeet
Keymap("n", "<leader>yy", function()
  require("yeet").execute("source venv/bin/activate", { clear_before_yeet = false })
end, { desc = "Yeet: activate" })
