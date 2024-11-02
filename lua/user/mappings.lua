local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-`>", "<esc>:Lazy<CR>", opts)
vim.keymap.set("n", "<C-1>", "<esc>:Mason<CR>", opts)

vim.keymap.set({ "n", "v", "i" }, "\\", ":NvimTreeFocus<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<C-\\>", ":NvimTreeToggle<CR>", opts)

vim.keymap.set({ "n", "i" }, "<C-s>", "<esc>:w<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<C-q>", "<esc>:q<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<C-A-z>", "<esc>:q!<CR>", opts)
vim.keymap.set({ "n", "v", "i" }, "<C-A-q>", "<esc>:qa<CR>", opts)

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<C-C>", '"+Y') -- yank line
vim.keymap.set({ "n", "x" }, "<leader>c", [["+y]]) -- copy to system clipboard

-- Paste from system clipboard
vim.keymap.set("n", "<C-v>", '"+p') -- paste after cursor
vim.keymap.set("n", "<C-V>", '"+P') -- paste before cursor
vim.keymap.set({ "n", "x" }, "<leader>v", [["+p]]) -- paste from system clipboard

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<C-d>", '"+d') -- delete motion
vim.keymap.set({ "n", "v" }, "<C-D>", '"+D') -- delete line
