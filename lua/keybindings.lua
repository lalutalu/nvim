vim.keymap.set("n", "<C-j>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<C-k>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<C-A-j>", "<cmd>BufferLineMovePrev<CR>", { desc = "Cycle buffer order to previous" })
vim.keymap.set("n", "<C-A-k>", "<cmd>BufferLineMoveNext<CR>", { desc = "Cycle buffer order to next" })
vim.keymap.set("n", "<C-q>", "<cmd>bd!<CR>", { desc = "Delete buffer" })
vim.keymap.set("n", "<Space><Space>", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })

vim.keymap.set("n", "<Space>d", "<cmd>CocDiagnostics<CR>", { desc = "Go to previous buffer" })

