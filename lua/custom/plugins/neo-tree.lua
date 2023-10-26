-- Manage the file system and other tree like structures
-- See also `:help neo-tree.txt`

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  --XXX version = "*",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
    vim.keymap.set('n', '<leader>T', function()
      local m = require('neo-tree.command')
      m.execute { toggle = true, source = 'filesystem', reveal = true }
    end, { desc = 'Toggle Filesystem [T]ree' })
  end,
}
