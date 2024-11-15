vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.scrolloff = 8

vim.opt.list = true
vim.opt.listchars:append({ nbsp = '+', tab = '‣ ', trail = '•', lead = '•' })

vim.opt.clipboard:append({ 'unnamedplus' })

vim.opt.wildignore:append({ '.git', '.DS_Store', 'node_modules' })
