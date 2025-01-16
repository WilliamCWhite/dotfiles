return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    --dependencies = { --deprecated as a dependency
      --"windwp/nvim-ts-autotag"
    --},
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "elixir",
          "heex",
          "javascript",
          "html"
        },
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = {enable = true },
        --autotag = { enable = true },
      })
    end,
  }
}
