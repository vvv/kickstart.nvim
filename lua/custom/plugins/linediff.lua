return {
  'AndrewRadev/linediff.vim',
  config = function()
    vim.keymap.set('v', '<leader>ld', "<ESC>:'<,'>Linediff<CR>", { desc = '[L]ine [D]iff' })
    vim.keymap.set('n', '<leader>lr', ':LinediffReset<CR>', { desc = '[L]ine diff [R]eset' })
  end,
}
