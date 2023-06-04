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
vim.api.nvim_set_keymap("n", "<C-A-j>", ":m+<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-A-k>", ":m-2<CR>", opts)

-- NVIMTree
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeFindFileToggle<CR>", opts)

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>bb", ":Telescope buffers<CR>", opts)

-- ToggleTerm
vim.api.nvim_set_keymap("n", "<C-z>", ":ToggleTerm<CR>", opts)

-- barbar
vim.api.nvim_set_keymap("n", "<C-j>", "<Cmd>BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<Cmd>BufferNext<CR>", opts)
vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-S-J>', '<Cmd>BufferMovePrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-S-K>', '<Cmd>BufferMoveNext<CR>', opts)
