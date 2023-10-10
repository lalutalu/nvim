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
vim.api.nvim_set_keymap("n", "<A-Down>", ":m+<CR>", opts)
vim.api.nvim_set_keymap("n", "<A-Up>", ":m-2<CR>", opts)
vim.api.nvim_set_keymap('n', '<leader>c', '<Cmd>tabclose<CR>', opts)

-- buffers
vim.api.nvim_set_keymap("n", "<C-j>", "<Cmd>tabprevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<Cmd>tabnext<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<C-J>", "<Cmd>bn<CR>", opts)
-- vim.api.nvim_set_keymap("n", "<C-K>", "<Cmd>bp<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-A-j>', '<cmd>tabm-<cr>', opts)
vim.api.nvim_set_keymap('n', '<C-A-k>', '<cmd>tabm+<cr>', opts)
