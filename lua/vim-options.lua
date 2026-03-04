vim.cmd("set termguicolors")
vim.cmd("set noswapfile")

vim.cmd("set guicursor=n:blinkon1,i-ci-ve:ver1-blinkon1")
vim.cmd("set cursorline")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set numberwidth=5")

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set colorcolumn=111")
vim.cmd("set wrap")
vim.cmd("set breakindent")
vim.cmd("set breakindentopt=sbr,shift:8")
vim.cmd("set showbreak=│")

vim.opt.lbr = true

vim.cmd("set signcolumn=yes")

vim.opt.fillchars = [[eob: ,lastline: ]]

vim.cmd("set scrolloff=999")

vim.keymap.set('n', 'j', "gj", { noremap = true })
vim.keymap.set('n', 'k', "gk", { noremap = true })

vim.keymap.set('n', '<C-d>', "7gj", { noremap = true })
vim.keymap.set('n', '<C-u>', "7gk", { noremap = true })

vim.keymap.set('n', '<leader>e', ":Explore<CR>", { noremap = true })
vim.keymap.set('n', '<leader>s', ":Sexplore<CR>", { noremap = true })
vim.keymap.set('n', '<leader>f', ":fin ", { noremap = true })

vim.cmd("set path=.,**")
vim.cmd("command -nargs=1 VimgrepProj vim /<args>/gj **/* | copen")
vim.keymap.set('n', '<leader>v', ":VimgrepProj ", { noremap = true })

vim.cmd("set wildignore=")
vim.cmd("set wildignore+=*/.git/**")
vim.cmd("set wildignore+=*/node_modules/**")
vim.cmd("set wildignore+=*/.venv/**")
vim.cmd("set wildignore+=*/__pycache__/**")

local function toggle_quickfix()
	local windows = vim.fn.getwininfo()
	for _, win in pairs(windows) do
		if win["quickfix"] == 1 then
			vim.cmd.cclose()
			return
		end
	end
	vim.cmd.copen()
end

vim.keymap.set('n', '<M-q>', toggle_quickfix, { desc = "Toggle Quickfix Window" })
vim.keymap.set('n', '<M-j>', ":cnext<CR>", { noremap = true })
vim.keymap.set('n', '<M-k>', ":cprevious<CR>", { noremap = true })

vim.keymap.set('n', '<M-d>', function()
		vim.diagnostic.setqflist({ bufnr = vim.api.nvim_get_current_buf() })
	end,
	{ desc = "Set diagnostics to quickfix" })

vim.api.nvim_create_autocmd('FileType', {
	pattern = "qf",
	callback = function()
		vim.opt_local.wrap = false
		vim.opt_local.colorcolumn = "0"
	end,
})

vim.filetype.add({
	extension = {
		psql = "sql",
	},
})

vim.g.netrw_banner = 0
vim.keymap.set('v', 'mf', ":normal mf<CR>", { noremap = true })

vim.cmd("colorscheme nino")
