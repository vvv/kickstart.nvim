-- Easily jump, pick and swap vim windows by annotated letters
-- See `:help window-picker`

return {
  'ten3roberts/window-picker.nvim',
  config = function()
    require('window-picker').setup {
      multi_windows = true,
    }
    local m = require('window-picker')
    vim.keymap.set('n', '<leader>ww', m.pick, { desc = 'Jump to the selected window' })
    vim.keymap.set('n', '<leader>wS', m.swap, { desc = 'Swap current window with selected' })
  end,
}
