-- Supercharge your Rust experience in Neovim! A heavily modified fork of rust-tools.nvim
--
-- :help rustaceanvim

return {
  'mrcjkb/rustaceanvim',
  version = '^4', -- Recommended
  lazy = false, -- This plugin is already lazy

  config = function()
    -- See https://github.com/mrcjkb/rustaceanvim?tab=readme-ov-file#gear-advanced-configuration
    vim.g.rustaceanvim = {
      --XXX -- Plugin configuration
      --XXX tools = {},
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
          local opts = { noremap = true, silent = true, buffer = bufnr, desc = '' }

          opts.desc = 'Open Cargo.toml'
          vim.keymap.set('n', '<leader>rc', ':RustLsp openCargo<CR>', opts)

          opts.desc = 'Open docs.rs for the symbol under cursor'
          vim.keymap.set('n', '<leader>rd', ':RustLsp openDocs<CR>', opts)

          opts.desc = 'Open parent module'
          vim.keymap.set('n', '<leader>rp', ':RustLsp parentModule<CR>', opts)
        end,
        --XXX default_settings = {
        --XXX   -- rust-analyzer language server configuration
        --XXX   ['rust-analyzer'] = {},
        --XXX },
      },
      --XXX -- DAP configuration
      --XXX dap = {},
    }
  end,
}
