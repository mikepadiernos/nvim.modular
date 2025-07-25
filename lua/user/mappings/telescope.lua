local opts = { noremap = true, silent = true }
-- local sshfs = require("remote-sshfs.api")

-- Telescope
Keymap("n", "<leader>fj", ":Telescope jumplist<CR>", opts)
Keymap("n", "<leader>fl", ":Telescope oil<CR>", opts)
Keymap("n", "<leader>fn", ":Nerdy<CR>", opts)
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
Keymap("n", "<leader>fr", ":Telescope frecency<CR>", opts)
Keymap("n", "<leader>ft", ":Telescope highlights<CR>", opts)

-- Telescope: Mru
Keymap("n", "<space>fu", ":Telescope mru_files<CR>", opts)
Keymap("n", "<space>mu", function()
  require("telescope").extensions.mru_files.mru_files({})
end, opts) -- Alternatively, using lua API

-- Telescope: Remote-sshfs
Keymap("n", "<leader>fec", function()
  sshfs.connect()
end, { desc = "Telescop[e]: Remote [C]onnect", noremap = true, silent = true })
Keymap("n", "<leader>fed", function()
  sshfs.disconnect()
end, { desc = "Telescop[e]: Remote [D]isconnect", noremap = true, silent = true })
Keymap("n", "<leader>fee", function()
  sshfs.edit()
end, { desc = "Telescop[e]: Remote [E]dit", noremap = true, silent = true })

-- Telescope: Yanklist
Keymap(
  "n",
  "<leader>fy",
  "<cmd>lua require('yanklist').yanklist()<CR>",
  { desc = "Telescope: [Y]anklist", noremap = true, silent = true }
)
