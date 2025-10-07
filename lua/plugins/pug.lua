return {
  "LevelOneNino/vim-pug",
  init = function()
    function _G.PugFoldExpr(ln)
      if not not vim.fn.getline(ln):match("^%s*$") then
        return 0
      end

      if vim.fn.indent(ln + 1) > vim.fn.indent(ln) then
        return ">" .. (vim.fn.indent(ln) / vim.bo.shiftwidth) + 1
      elseif vim.fn.indent(ln + 1) < vim.fn.indent(ln) then
        return "<" .. (vim.fn.indent(ln) / vim.bo.shiftwidth)
      else
        if vim.fn.indent(ln - 1) > vim.fn.indent(ln) then
          return (vim.fn.indent(ln) / vim.bo.shiftwidth)
        else
          return "="
        end
      end
    end

    vim.cmd([[
      augroup pugFolds
      autocmd!
      autocmd filetype pug setlocal foldmethod=expr
      autocmd filetype pug setlocal foldexpr=v:lua.PugFoldExpr(v:lnum)
      augroup end
    ]])
  end
}
