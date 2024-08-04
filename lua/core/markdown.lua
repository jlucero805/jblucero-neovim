-- create a header
vim.keymap.set("n", "<leader>mh", "i### ")

-- scroll through headers
vim.keymap.set("n", "<leader>mn", "/###<cr>")
vim.keymap.set("n", "<leader>mp", "?###<cr>")

-- convert line to list
vim.keymap.set("n", "<leader>ml", "_i* <Esc>")
