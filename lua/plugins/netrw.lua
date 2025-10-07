return{
  'prichrd/netrw.nvim',
  opts={},
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    require("netrw").setup({})
  end
}
