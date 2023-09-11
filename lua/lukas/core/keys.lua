local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
vim.g.localmapleader = ' '

-- moving around buffers
vim.api.nvim_set_keymap("n", "<A-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<A-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<A-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<A-l>", "<C-w>l", opts)

-- save and quit
vim.api.nvim_set_keymap("n", "<C-s>", ":w!<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-c>", ":q!<CR>", opts)

-- moving lines
vim.api.nvim_set_keymap("n", "<A-j>", ":m+<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-k>", ":m-2<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>c', '<Cmd>tabclose<CR>', opts)

-- ToggleTerm
-- vim.api.nvim_set_keymap("n", "<C-z>", ":ToggleTerm<CR>", opts)

-- buffers
vim.api.nvim_set_keymap("n", "<C-j>", "<Cmd>BufferLineCyclePrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<Cmd>BufferLineCycleNext<CR>", opts)
vim.api.nvim_set_keymap('n', '<A-S-J>', '<Cmd>tabm-<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-S-K>', '<Cmd>tabm+<CR>', opts)
