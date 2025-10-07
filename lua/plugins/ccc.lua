return {
  {
    'uga-rosa/ccc.nvim',
    config = function()
      require("ccc").setup({
        highlighter = {
          auto_enable = true,
          lsp = true,
          preserve= true,
          save_on_quit = true,
        },
        win_opts = {
          row = 0,
          col = 0,
          border = "single"
        }
      })
      vim.keymap.set("n", "<leader>c", "<cmd>CccPick<CR>", {})
    end,
  },
}
