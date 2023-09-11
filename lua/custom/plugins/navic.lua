-- Simple winbar/statusline plugin that shows your current code context.
-- A.k.a. "breadcrumbs".
--
-- See `:help navic`

return {
  'SmiteshP/nvim-navic',
  config = function()
    -- vim.api.nvim_set_hl(0, "NavicText", { link = "Comment" })
    -- vim.api.nvim_set_hl(0, "NavicSeparator", { link = "Comment" })

    require('nvim-navic').setup {
      lsp = {
        auto_attach = true,
      },
      highlight = true,
      -- click = true, -- XXX-TODO: Double click requires nvim-navbuddy to be installed
    }

    vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
  end,
  dependencies = 'neovim/nvim-lspconfig',
}
