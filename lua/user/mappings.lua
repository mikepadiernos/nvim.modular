Keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

Keymap("n", "<leader>1", "<esc>:Lazy<CR>", opts)
Keymap("n", "<leader>2", "<esc>:Mason<CR>", opts)

Keymap({ "n", "v", "i", "x" }, "<C-S-Right>", ":bnext<CR>", opts)
Keymap({ "n", "v", "i", "x" }, "<C-S-Left>", ":bprev<CR>", opts)

Keymap({ "n", "i" }, "<C-s>", "<esc>:w<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-q>", "<esc>:q<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-z>", "<esc>:q!<CR>", opts)
Keymap({ "n", "v", "i" }, "<C-A-q>", "<esc>:qa<CR>", opts)

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

-- Nvim Tree
Keymap({ "n", "v", "i" }, "<leader>\\", ":NvimTreeFocus<CR>", opts)
Keymap({ "n", "v", "i" }, "<leader><S-\\>", ":NvimTreeToggle<CR>", opts)

-- Oil
Keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }, opts)

-- Simply File Manager
Keymap({ "n", "v", "i" }, "<leader>fs", ":SimplyFileOpen<CR>", opts)

-- Scratch
Keymap("n", "<C-S-s>", "<cmd>Scratch<cr>")
Keymap("n", "<C-S-o>", "<cmd>ScratchOpen<cr>")

Keymap("n", "<Leader>ic", "<cmd>IconPickerNormal<cr>", opts)
Keymap("n", "<Leader>iy", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
Keymap("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)

-- Telescope
Keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
Keymap("n", "<leader>fl", "<cmd>Telescope oil<CR>", opts)
