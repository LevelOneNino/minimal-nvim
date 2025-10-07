local severity = vim.diagnostic.severity
function _G.Diagnostics()
  local diagnostic = ''
  local errors = #vim.diagnostic.get(0, { severity = severity.ERROR })
  if errors > 0 then
    diagnostic = diagnostic .. ' %#DiagnosticSignError#E' .. errors
  end
  local warnings = #vim.diagnostic.get(0, { severity = severity.WARN })
  if warnings > 0 then
    diagnostic = diagnostic ..' %#DiagnosticSignWarn#W' .. warnings
  end
  local hints = #vim.diagnostic.get(0, { severity = severity.HINT })
  if hints > 0 then
    diagnostic = diagnostic ..' %#DiagnosticSignHint#H' .. hints
  end
  local infos = #vim.diagnostic.get(0, { severity = severity.INFO })
  if infos > 0 then
    diagnostic = diagnostic ..' %#DiagnosticSignInfo#I' .. infos
  end
  return diagnostic
end

function _G.GitStatus()
  local git_info = vim.b.gitsigns_status_dict
  if not git_info or git_info.head == "" then
    return ""
  end
  local added = git_info.added and ("%#GitSignsAdd#+" .. git_info.added .. " ") or ""
  local changed = git_info.changed and ("%#GitSignsChange#~" .. git_info.changed .. " ") or ""
  local removed = git_info.removed and ("%#GitSignsDelete#-" .. git_info.removed .. " ") or ""
  if git_info.added == 0 then
    added = ""
  end
  if git_info.changed == 0 then
    changed = ""
  end
  if git_info.removed == 0 then
    removed = ""
  end
  return table.concat {
    " ",
    added,
    changed,
    removed,
    "%* [  ",
    git_info.head,
    " ]",
  }
end

local statusline= {
  " ",
  "%y ",
  "%f ",
  "%m ",
  "%#pmenu#%l:%v ",
  "%{%v:lua.Diagnostics()%}",
  "%*%=",
  "%{%v:lua.GitStatus()%}",
  " "
}

vim.opt.statusline = table.concat(statusline, '')

vim.cmd([[
augroup statuslineHide
autocmd! filetype toggleterm setlocal statusline=%s
augroup END
]])
