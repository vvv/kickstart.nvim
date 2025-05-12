-- GitHub Copilot - Your AI pair programmer
-- See `:help copilot.txt`

--XXX-DELETEME -- Use <C-]> to accept Copilot suggestions instead of the default <Tab>.
--XXX-DELETEME --
--XXX-DELETEME -- Inspired by https://mattbatman.com/remapping-tab-completion-for-github-copilot-in-neovim/
--XXX-DELETEME vim.api.nvim_set_keymap('i', '<C-]>', 'copilot#Accept("<CR>")', { expr = true, noremap = true, silent = true })
--XXX-DELETEME vim.g.copilot_no_tab_map = true

vim.g.copilot_assume_mapped = true

return {
  'github/copilot.vim',
}
