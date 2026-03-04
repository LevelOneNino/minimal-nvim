return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	config = function()
		local langs = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"python",
			"javascript",
			"tsx",
			"go",
			"bash",
			"json",
			"yaml",
			"toml",
		}
		require('nvim-treesitter').install(langs)
		vim.api.nvim_create_autocmd('FileType', {
			pattern = require('nvim-treesitter').get_installed(),
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
