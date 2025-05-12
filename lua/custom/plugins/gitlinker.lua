-- Generate shareable file permalinks (with line ranges) for several git web frontend hosts.
-- Easily share code locations with your co-workers.
--
-- Inspired by tpope/vim-fugitive's `:GBrowse`
--
-- Example of a permalink:
-- https://github.com/neovim/neovim/blob/2e156a3b7d7e25e56b03683cc6228c531f4c91ef/src/nvim/main.c#L137-L156
--
-- Default key mapping: `<leader>gy` for normal and visual mode.
--
-- See `:help gitlinker.txt`.

return {
  'ruifm/gitlinker.nvim',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    require('gitlinker').setup()
  end,
}
