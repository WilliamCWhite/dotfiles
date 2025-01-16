return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls-extras.nvim"
    },
    config = function()
      local null_ls = require("null-ls")

      local formatting = null_ls.builtins.formatting
      -- local diagnostics = null_ls.builtins.diagnostics
      null_ls.setup({
        sources = {
          formatting.prettierd,
          require("none-ls.diagnostics.eslint_d"),
          formatting.stylua,
        }
      })

      vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = "Format Buffer"} )
    end
  }
}
