-- Neovim motions on speed!
-- See `:help hop.txt`

return {
  'phaazon/hop.nvim',
  branch = 'v2',
  config = function()
    require('hop').setup {
      multi_windows = true,
    }
    vim.keymap.set({ 'n', 'v' }, 'g/', require('hop').hint_char1, { desc = 'Hop to char1' })
  end,
}
