return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      auto_install = true,
      ignore_install = {
      },
      highlight = {
        enable = true,
        disable = {
          "pug",
          "html",
        },
      },
      indent = {
        enable = true,
        disable = {
          "pug",
          "html",
        },
      },
    })
  end,
}
