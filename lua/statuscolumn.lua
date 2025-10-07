function Get_fold(lnum)
  if vim.fn.foldclosed(lnum) ~= -1 then
    return "%#DiagnosticSignError#" .. "◼"
  end
  return " "
end

_G.get_statuscol = function()
  return "%s%{%v:relnum?'%=%{v:relnum}':'%#CursorLineNr#%-4{v:lnum}%='%} %*" .. Get_fold(vim.v.lnum) .. " "
end

vim.o.statuscolumn = "%!v:lua.get_statuscol()"

vim.cmd([[
augroup statuscolumnHide
autocmd! filetype help setlocal statuscolumn=
autocmd! filetype toggleterm setlocal statuscolumn=%s
autocmd! filetype netrw setlocal statuscolumn=
augroup END
]])
