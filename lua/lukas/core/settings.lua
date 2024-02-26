-- backup and undo file
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.writebackup = false

-- clipboard
vim.cmd([[
let g:clipboard = {
  \   'name': 'WslClipboard',
  \   'copy': {
  \      '+': 'clip.exe',
  \      '*': 'clip.exe',
  \    },
  \   'paste': {
  \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  \   },
  \   'cache_enabled': 0,
  \ }
]])

-- visual
vim.opt.termguicolors = true
vim.opt.smarttab = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cursorline = true
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

--guicursor
-- vim.opt.guicursor = ""

vim.cmd([[
augroup filetype_jsx
autocmd!
autocmd FileType javascript set filetype=javascriptreact
augroup END
]])

