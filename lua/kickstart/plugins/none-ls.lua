return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.prettier,
        require 'none-ls.diagnostics.ruff',
        require 'none-ls.diagnostics.eslint',
      },
    }

    -- Set keymap for formatting
    vim.keymap.set('n', '<leader>gf', function()
      vim.lsp.buf.format { async = true }
    end, { desc = '[G]lobal [F]ormat' })
  end,
}
