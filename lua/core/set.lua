-- backup and undo file
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.writebackup = false

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- visual
vim.opt.termguicolors = true
vim.opt.smarttab = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
-- vim.opt.cursorline = true
vim.opt.shiftwidth = 2

-- mouse
vim.opt.mouse = "a"

-- splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- autocmd for markdown files
vim.api.nvim_exec([[
  autocmd FileType markdown setlocal nonumber norelativenumber
]], true)

-- autocmd for ejs support
vim.api.nvim_command('autocmd BufRead,BufNewFile *.ejs setfiletype html')

-- vim cursor 
vim.opt.guicursor = ""
