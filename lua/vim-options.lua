vim.cmd("set termguicolors")
vim.cmd("set noswapfile")

vim.cmd("set guicursor=n:blinkon1,i-ci-ve:ver1-blinkon1")
vim.cmd("set cursorline")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set numberwidth=5")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set colorcolumn=111,222,333,444,555")
vim.cmd("set wrap")
vim.cmd("set breakindent")
-- vim.cmd("set breakindentopt=shift:4,sbr")
vim.cmd("set breakindentopt=sbr")
vim.cmd("set showbreak=│")

vim.opt.lbr = true

vim.cmd("set signcolumn=yes")

vim.opt.fillchars = [[eob: ,lastline: ]]

vim.cmd("set scrolloff=999")

vim.keymap.set('n', 'j', "gj", { noremap = true })
vim.keymap.set('n', 'k', "gk", { noremap = true })

vim.keymap.set('n', '<C-d>', "7gj", { noremap = true })
vim.keymap.set('n', '<C-u>', "7gk", { noremap = true })

vim.cmd("colorscheme nino")
