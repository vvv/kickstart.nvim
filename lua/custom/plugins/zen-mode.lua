-- 🧘 Distraction-free coding for Neovim
--
-- :help zen-mode.nvim.txt

return {
  "folke/zen-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    vim.keymap.set('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true, desc = 'toggle zen mode' })
  end,
}
