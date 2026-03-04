return {
	"LevelOneNino/curl.nvim",
	ft = { "curl" },
	cmd = { "CurlOpen" },
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	init = function()
		local function toggle_curl()
			for _, tab in ipairs(vim.api.nvim_list_tabpages()) do
				local close_tab = false

				for _, win in ipairs(vim.api.nvim_tabpage_list_wins(tab)) do
					local buf = vim.api.nvim_win_get_buf(win)
					if vim.api.nvim_buf_is_loaded(buf) then
						local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ":t")
						if filename:match("%.curl$") then
							close_tab = true
							break
						end
					end
				end

				if close_tab then
					vim.api.nvim_set_current_tabpage(tab)
					vim.cmd("tabclose")
					return
				end
			end
			vim.cmd("tabedit .curl")
		end
		vim.keymap.set("n", "<M-c>", toggle_curl, {})

		local autocmd = vim.api.nvim_create_autocmd
		autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.curl",
			callback = function()
				vim.opt.filetype = "curl"
				vim.treesitter.start(0, "bash")
			end,
		})
	end
}
