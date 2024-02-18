-- Tools for better development in Rust using Neovim's built-in LSP
--
-- XXX-TODO(vvv): Switch to https://github.com/mrcjkb/rustaceanvim

return {
  'simrat39/rust-tools.nvim',
  config = function()
    local rt = require('rust-tools')
    rt.setup({
      server = {
        on_attach = function(_, bufnr)
          vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions,
            { buffer = bufnr, desc = 'hover actions' })
          vim.keymap.set('n', '<leader>a', rt.code_action_group.code_action_group,
            { buffer = bufnr, desc = 'code action groups' })

          -- local nmap = function(keys, func, desc)
          --   if desc then
          --     desc = 'rust-tools: ' .. desc
          --   end
          --
          --   vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
          -- end

          -- nmap('<C-space>', rt.hover_actions.hover_actions, 'Hover actions')
          -- nmap('<leader>a', rt.code_action_group.code_action_group, 'Code action groups')
          -- nmap('<leader>rc', rt.open_cargo_toml.open_cargo_toml, 'Open Cargo.toml')
        end,
      },
    })
    vim.keymap.set('n', '<leader>rc', rt.open_cargo_toml.open_cargo_toml,
      { buffer = bufnr, desc = '[R]ust-tools: open [C]argo.toml' }
    )
    vim.keymap.set('n', '<leader>rp', rt.parent_module.parent_module,
      { buffer = bufnr, desc = '[R]ust-tools: go to [P]arent module' }
    )
  end,
}
