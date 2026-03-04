return {
	"oysandvik94/curl.nvim",
	ft = { "curl" },
	cmd = { "CurlOpen" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	init = function()
		local function toggle_curl()
			if vim.bo.filetype == "curl" then
				vim.cmd.CurlClose()
				return
			end
			vim.cmd.CurlOpen()
		end
		vim.keymap.set("n", "<M-c>", toggle_curl, {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.curl",
			callback = function()
				vim.opt.filetype = "curl"
			end,
		})
	end
}
