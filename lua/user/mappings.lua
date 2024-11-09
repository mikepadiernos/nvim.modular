Keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

Keymap("n", "<C-`>", "<esc>:Lazy<CR>", opts)
Keymap("n", "<C-1>", "<esc>:Mason<CR>", opts)

Keymap({ "n", "v", "i" }, "<leader>fs", ":SimplyFileOpen<CR>", opts)
-- Keymap({ "n", "v", "i" }, "<leader>fs", ":SimplyFileOpen", opts)

Keymap({ "n", "v", "i" }, "\\", ":NvimTreeFocus<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-\\>", ":NvimTreeToggle<CR>", opts)

Keymap({ "n", "i" }, "<C-s>", "<esc>:w<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-q>", "<esc>:q<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-z>", "<esc>:q!<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-q>", "<esc>:qa<CR>", opts)

-- Yank into system clipboard
Keymap({ "n", "v" }, "<C-c>", '"+y') -- yank motion
Keymap({ "n", "v" }, "<C-C>", '"+Y') -- yank line
Keymap({ "n", "x" }, "<leader>c", [["+y]]) -- copy to system clipboard

-- Paste from system clipboard
Keymap("n", "<C-v>", '"+p') -- paste after cursor
Keymap("n", "<C-V>", '"+P') -- paste before cursor
Keymap({ "n", "x" }, "<leader>v", [["+p]]) -- paste from system clipboard

-- Delete into system clipboard
Keymap({ "n", "v" }, "<C-d>", '"+d') -- delete motion
Keymap({ "n", "v" }, "<C-D>", '"+D') -- delete line

-- Scratch
Keymap("n", "<C-S-s>", "<cmd>Scratch<cr>")
Keymap("n", "<C-S-o>", "<cmd>ScratchOpen<cr>")

-- Telescope
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)

