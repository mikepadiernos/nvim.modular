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
Keymap("n", "<leader>a", "<cmd>AerialToggle!<CR>", opts)

-- Grug FAR
Keymap({ "n" }, "<A-S-g>", ":GrugFar<CR>", opts)

-- LazyDocker
Keymap("n", "<leader>ld", "<cmd>LazyDocker<CR>", { desc = "Toggle [L]azy[D]ocker", noremap = true, silent = true })

-- LazyGit
Keymap(
  "n",
  "<leader>lg",
  ":lua require('tsugit').toggle()<cr>",
  { desc = "Toggle [L]azy[G]it", noremap = true, silent = true }
)
Keymap(
  "n",
  "<leader>ll",
  ":lua require('tsugit').toggle_for_file(absolutePath)<cr>",
  { desc = "[L]azyGit: [L]ist Commits", noremap = true, silent = true }
)

-- Legendary
Keymap(
  { "n", "v", "i" },
  "<leader>lr",
  ":Legendary<cr>",
  { desc = "Toggle [L]egenda[r]y", noremap = true, silent = true }
)

-- Neomusic
-- Keymap({ "n", "v", "i" }, "<leader>om", ":Neomusic toggle_playlist_menu<CR>", { desc = "Ne[o]music: Playlist [M]enu" })
-- Keymap({ "n", "v", "i" }, "<leader>oc", ":Neomusic toggle_controls<CR>", { desc = "Ne[o]music: [C]ontrols" })
-- Keymap({ "n", "v", "i" }, "<leader>oo", ":Neomusic unpause_song<CR>", { desc = "Ne[o]music: Unpause Song" })
-- Keymap({ "n", "v", "i" }, "<leader>oo", ":Neomusic pause_song<CR>", { desc = "Ne[o]music: Pause Song" })
-- Keymap({ "n", "v", "i" }, "<leader>ol", ":Neomusic next_song<CR>", { desc = "Ne[o]music: Next Song" })
-- Keymap({ "n", "v", "i" }, "<leader>oh", ":Neomusic prev_song<CR>", { desc = "Ne[o]music: Previous Song" })
-- Keymap({ "n", "v", "i" }, "<leader>ok", ":Neomusic increase_volume 5<CR>", { desc = "Ne[o]music: Volume Increase" })
-- Keymap({ "n", "v", "i" }, "<leader>oj", ":Neomusic decrease_volume 5<CR>", { desc = "Ne[o]music: Volume Decrease" })
-- Keymap({ "n", "v", "i" }, "<leader>ov", ":Neomusic toggle_queue_view<CR>", { desc = "Ne[o]music: Queue [V]iew" })
-- Keymap({ "n", "v", "i" }, "<leader>oq", ":Neomusic play_queue<CR>", { desc = "Ne[o]music: [Q]ueue" })
-- Keymap({ "n", "v", "i" }, "<leader>os", ":Neomusic search_playlists<CR>", { desc = "Ne[o]music: [S]earch Playlist" })

-- Neowords
-- Keymap({ "n", "x", "o" }, "w", Hops.forward_start)
-- Keymap({ "n", "x", "o" }, "e", Hops.forward_end)
-- Keymap({ "n", "x", "o" }, "b", Hops.backward_start)
-- Keymap({ "n", "x", "o" }, "ge", Hops.backward_end)

-- Nvim Tree
Keymap({ "n", "v", "i" }, "<leader>\\", ":NvimTreeFocus<CR>", opts)
Keymap({ "n", "v", "i" }, "<leader><S-\\>", ":NvimTreeToggle<CR>", opts)

-- Oil
Keymap(
  "n",
  "<leader>op",
  ":Oil --float<CR>",
  { desc = "[O]il: Open [P]arent Directory", noremap = true, silent = true }
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

-- Telescope
Keymap("n", "<leader>fj", ":Telescope jumplist<CR>", opts)
Keymap("n", "<leader>fl", ":Telescope oil<CR>", opts)
Keymap("n", "<leader>fn", ":Nerdy<CR>", opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
Keymap("n", "<leader>fr", ":Telescope frecency<CR>", opts)
Keymap("n", "<leader>ft", ":Telescope highlights<CR>", opts)
-- Keymap("n", "<leader>fv", ":Telescope remote-sshfs<CR>", opts)
Keymap({ "n", "v" }, "<leader>fs", "<cmd>Yazi<CR>", { desc = "Open Yazi", noremap = true, silent = true })

-- Telescope: Mru
Keymap("n", "<space>fu", ":Telescope mru_files<CR>", opts)
Keymap("n", "<space>mu", function()
  require("telescope").extensions.mru_files.mru_files({})
end, opts) -- Alternatively, using lua API

-- Telescope: Yanklist
Keymap(
  "n",
  "<leader>fy",
  "<cmd>lua require('yanklist').yanklist()<CR>",
  { desc = "Telescope: Yanklist", noremap = true, silent = true }
)

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

-- Yazi
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
