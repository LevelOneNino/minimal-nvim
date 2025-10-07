--Defaults to Treesitter
vim.cmd("set foldlevel=99")
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

vim.o.viewoptions = "folds,cursor"

-- vim.cmd([[
-- augroup remember_folds
-- autocmd!
-- autocmd BufWinLeave ?* mkview
-- autocmd BufWinEnter ?* silent! loadview
-- augroup END
-- ]])

