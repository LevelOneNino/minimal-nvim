return {
  'kevinhwang91/nvim-ufo',
  dependencies = {
    'kevinhwang91/promise-async'
  },
  config = function()
    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local suffix = (' ◘◘◘ '):format(endLnum - lnum)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, 'DiagnosticError' })
      return newVirtText
    end
    require('ufo').setup({
      open_fold_hl_timeout = 0,
      fold_virt_text_handler = handler
    })
  end,
  init = function()
    vim.keymap.set('n', 'zm', '<cmd>lua require("ufo").closeFoldsWith(0)<CR>',{noremap = true})
    vim.keymap.set('n', 'zr', '<cmd>lua require("ufo").openAllFolds()<CR>',{noremap = true})
    vim.keymap.set('n', 'zM', '<cmd>lua require("ufo").closeFoldsWith(0)<CR>',{noremap = true})
    vim.keymap.set('n', 'zR', '<cmd>lua require("ufo").openAllFolds()<CR>',{noremap = true})
  end
}
