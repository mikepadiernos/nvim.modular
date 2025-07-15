local opts = { noremap = true, silent = true }

Keymap("n", "<leader>1", "<esc>:Lazy<CR>", opts)
Keymap("n", "<leader>2", "<esc>:Mason<CR>", opts)

Keymap({ "n", "v", "i" }, "<leader>\\", ":NvimTreeToggle<CR>", opts)
-- Keymap({ "n", "v", "i" }, "<leader><S-\\>", ":NvimTreeToggle<CR>", opts)

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
