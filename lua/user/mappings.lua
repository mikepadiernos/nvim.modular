Keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

Keymap("n", "<leader>1", "<esc>:Lazy<CR>", opts)
Keymap("n", "<leader>2", "<esc>:Mason<CR>", opts)

Keymap({ "n", "v", "i", "x" }, "<C-S-Right>", ":bnext<CR>", opts)
Keymap({ "n", "v", "i", "x" }, "<C-S-Left>", ":bprev<CR>", opts)

Keymap({ "n", "i" }, "<C-s>", "<esc>:w<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-x>", "<esc>:qa!<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-q>", "<esc>:q<CR>", opts)
-- Keymap({ "n", "v", "i" }, "<C-A-S-q>", "<esc>:qa!<CR>", opts)

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

-- Aerial
Keymap("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-- Drawer

-- Grug FAR
Keymap({ "n" }, "<A-S-g>", ":GrugFar<CR>", opts)

-- Neomusic
Keymap({ "n", "v", "i" }, "<leader>om", ":Neomusic toggle_playlist_menu<CR>", { desc = "Ne[o]music: Playlist [M]enu" })
Keymap({ "n", "v", "i" }, "<leader>oc", ":Neomusic toggle_controls<CR>", { desc = "Ne[o]music: [C]ontrols" })
Keymap({ "n", "v", "i" }, "<leader>oo", ":Neomusic unpause_song<CR>", { desc = "Ne[o]music: Unpause Song" })
Keymap({ "n", "v", "i" }, "<leader>oo", ":Neomusic pause_song<CR>", { desc = "Ne[o]music: Pause Song" })
Keymap({ "n", "v", "i" }, "<leader>ol", ":Neomusic next_song<CR>", { desc = "Ne[o]music: Next Song" })
Keymap({ "n", "v", "i" }, "<leader>oh", ":Neomusic prev_song<CR>", { desc = "Ne[o]music: Previous Song" })
Keymap({ "n", "v", "i" }, "<leader>ok", ":Neomusic increase_volume 5<CR>", { desc = "Ne[o]music: Volume Increase" })
Keymap({ "n", "v", "i" }, "<leader>oj", ":Neomusic decrease_volume 5<CR>", { desc = "Ne[o]music: Volume Decrease" })
Keymap({ "n", "v", "i" }, "<leader>ov", ":Neomusic toggle_queue_view<CR>", { desc = "Ne[o]music: Queue [V]iew" })
Keymap({ "n", "v", "i" }, "<leader>oq", ":Neomusic play_queue<CR>", { desc = "Ne[o]music: [Q]ueue" })
Keymap({ "n", "v", "i" }, "<leader>os", ":Neomusic search_playlists<CR>", { desc = "Ne[o]music: [S]earch Playlist" })

-- Neowords
-- Keymap({ "n", "x", "o" }, "w", Hops.forward_start)
-- Keymap({ "n", "x", "o" }, "e", Hops.forward_end)
-- Keymap({ "n", "x", "o" }, "b", Hops.backward_start)
-- Keymap({ "n", "x", "o" }, "ge", Hops.backward_end)

-- Nvim Tree
Keymap({ "n", "v", "i" }, "<leader>\\", ":NvimTreeFocus<CR>", opts)
Keymap({ "n", "v", "i" }, "<leader><S-\\>", ":NvimTreeToggle<CR>", opts)

-- Oil
Keymap("n", "<leader>op", ":Oil --float<CR>", { desc = "[O]il: Open [P]arent Directory" })

-- Outline
Keymap("n", "<leader>ot", "<cmd>Outline<CR>", { desc = "T[o]ggle Ou[t]line" })

-- Scratch
Keymap("n", "<C-S-s>", "<cmd>Scratch<CR>", { desc = "[S]cracth: New" })
Keymap("n", "<C-S-o>", "<cmd>ScratchOpen<CR>", { desc = "Scratch: [O]pen" })

-- Sidebar
Keymap({ "n", "v", "i" }, "<leader>;", "<cmd>SidebarNvimToggle<CR>", { desc = "Sidebar: Open" })

-- Switch-project
Keymap("n", "<leader>ps", "<cmd>SwitchProjects<CR>", { desc = "[P]roject [S]witch" })

-- Telescope
Keymap("n", "<leader>fj", ":Telescope jumplist<CR>", opts)
Keymap("n", "<leader>fl", ":Telescope oil<CR>", opts)
Keymap("n", "<leader>fn", ":Nerdy<CR>", opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
Keymap("n", "<leader>fr", ":Telescope frecency<CR>", opts)
Keymap("n", "<leader>ft", ":Telescope highlights<CR>", opts)
Keymap("n", "<leader>fv", ":Telescope remote-sshfs<CR>", opts)
Keymap("n", "<leader>fy", "<cmd>lua require('yanklist').yanklist()<CR>", { desc = "Open Yanklist" })

-- Tmux-switch
Keymap("n", "<C-f>", "<CMD>TmuxSwitch<CR>")
Keymap("n", "<leader>cs", "<CMD>TmuxCreateSession<CR>")
Keymap("n", "<leader>rs", "<CMD>TmuxRenameSession<CR>")

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
Keymap({ "n", "v", "i" }, "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "[T]oggle Terminal: [F]loat" })

-- Treesj
Keymap({ "n", "v" }, "<leader>te", require("treesj").toggle, { desc = "[T]reesj: Toggl[E]" })
Keymap({ "n", "v" }, "<leader>ts", function()
  require("treesj").toggle({ split = { recursive = true } })
end, { desc = "[T]reesj: [S]plit" })

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

-- Yazi
Keymap({ "n", "v" }, "<leader>yz", "<cmd>Yazi<CR>", { desc = "Open Yazi" })
Keymap({ "n", "v" }, "<leader>yw", "<cmd>Yazi cwd<CR>", { desc = "Open Yazi in working directory" })
Keymap({ "n", "v" }, "<leader>yn", "<cmd>Yazi toggle<CR>", { desc = "Resume Yazi" })

-- Yeet
Keymap("n", "<leader>yy", function()
  require("yeet").execute("source venv/bin/activate", { clear_before_yeet = false })
end, { desc = "Yeet: activate" })
