-- Easily jump, pick and swap vim windows by annotated letters
-- See `:help window-picker`

return {
  'ten3roberts/window-picker.nvim',
  config = function()
    require('window-picker').setup {
      multi_windows = true,
    }
    vim.keymap.set('n', '<leader>ww', require('window-picker').pick, { desc = 'Jump to the selected window' })
    vim.keymap.set('n', '<leader>ws', require('window-picker').swap, { desc = 'Swap current window with selected' })
  end,
}
