-- <leader>
vim.g.mapleader = " "

-- set df to normal mode
vim.keymap.set("i", "df", "<Esc>", {})
vim.keymap.set("n", "df", "<Esc>", {})
vim.keymap.set("v", "df", "<Esc>", {})

-- open up netrw
-- overidden by neotree
-- vim.keymap.set("n", "-", vim.cmd.Ex)

-- split windows
vim.keymap.set("n", "<leader>wv", "<C-w>v", {})
vim.keymap.set("n", "<leader>wh", "<C-w>s", {})

-- resize windows
vim.keymap.set("n", "<leader>w<Right>", "<C-w>>", {})
vim.keymap.set("n", "<leader>w<Left>", "<C-w><", {})
vim.keymap.set("n", "<leader>w<Up>", "<C-w>+", {})
vim.keymap.set("n", "<leader>w<Down>", "<C-w>-", {})

-- navigate windows
vim.keymap.set("n", "<C-h>", "<C-w><Left>", {})
vim.keymap.set("n", "<C-l>", "<C-w><Right>", {})
vim.keymap.set("n", "<C-j>", "<C-w><Down>", {})
vim.keymap.set("n", "<C-k>", "<C-w><Up>", {})

-- quit window
vim.keymap.set("n", "<leader>wq", vim.cmd.quit, {})

-- save
vim.keymap.set("n", "<leader>sa", "<cmd>w<cr><cmd>wa<cr>", {})
vim.keymap.set("n", "<leader>ss", vim.cmd.w, {})


-- navigate text
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})
vim.keymap.set("n", "<C-e>", "jzz", {})
vim.keymap.set("n", "<C-y>", "kzz", {})

-- buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bn)
vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
