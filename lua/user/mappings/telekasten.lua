Keymap("n", "<leader>z", "<cmd>Telekasten panel<CR>") -- Launch panel if nothing is typed after <leader>z
-- Keymap("n", "<leader>zT", require("telescope").extensions.tktodo.todo(), {}) -- Toggle telekasten todo lists

-- Most used functions
Keymap("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
Keymap("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
Keymap("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
Keymap("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
Keymap("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
Keymap("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
Keymap("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
Keymap("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

Keymap("i", "[[", "<cmd>Telekasten insert_link<CR>") -- Call insert link automatically when we start typing a link
